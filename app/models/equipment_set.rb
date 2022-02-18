class EquipmentSet < ApplicationRecord
  belongs_to :user
  has_many :equipment_set_items
end
