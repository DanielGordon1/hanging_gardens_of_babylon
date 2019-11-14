class PlantTagsController < ApplicationController
  before_action :set_plant
  def new
    @plant_tag = PlantTag.new
    # array deduction / substraction
    @tags = Tag.all - @plant.tags
  end

  def create
    # cater to multiple tags at the same time
    @tags = Tag.where(id: params[:plant_tag][:tag])
    @tags.each do |tag|
      PlantTag.create(tag: tag, plant: @plant)
    end
    redirect_to garden_path(@plant.garden)
  end

  private

  def set_plant
    @plant = Plant.find(params[:plant_id])
  end
end
