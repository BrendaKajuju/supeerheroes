class HeroPowersController < ApplicationController
  def create
    hero_power = HeroPower.new(hero_power_params)
    if hero_power.save
      hero = Hero.includes(:powers).find_by(id: hero_power.hero_id)
      render json: hero.as_json(include: { powers: { only: [:id, :name, :description] } })
    else
      render json: { errors: hero_power.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def hero_power_params
    params.require(:hero_power).permit(:strength, :power_id, :hero_id)
  end
end

