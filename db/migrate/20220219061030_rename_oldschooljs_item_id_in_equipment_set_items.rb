class RenameOldschooljsItemIdInEquipmentSetItems < ActiveRecord::Migration[7.0]
  def change
    rename_column :equipment_set_items, :oldschool_js_item_id ,:oldschooljs_item_id
  end
end
