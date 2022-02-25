class EquipmentSetsController < ApplicationController
  before_action :authenticate_user

  def index
    render json: EquipmentSet.all
  end

  def show
    render json: EquipmentSet.find(params[:id])
  end

  def create
    current_set = EquipmentSet.create(
      name: params[:name], 
      user_id: 1, 
      oldschooljs_monster_id: 12915)
    items = params[:items]
    items.map! do |item|
      EquipmentSetItem.new(
        oldschooljs_item_id: item[:id],
        equipment_set_id: current_set.id,
        slot: item[:slot]
      )
    end
    items.each { |item| render json: {message: "WE have a problem!!!"} if !item.save}
    render json: current_set.equipment_set_items
  end

  # def update
  #   items = params[:items]
  #   items.map! do |item|
  #     EquipmentSetItem.new(
  #       oldschooljs_item_id: item[:id],
  #       equipment_set_id: params[:id],
  #       slot: item[:slot]
  #     )
  #   end
  #   items.each { |item| render json: {message: "WE have a problem!!!"} if !item.save}
  # end

end
