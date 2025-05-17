class CreateVillagerItems < ActiveRecord::Migration[8.0]
  def change
    create_table :villager_items do |t|
      t.references :item, null: false, foreign_key: true
      t.references :villager, null: false, foreign_key: true
      t.references :point, null: false, foreign_key: true

      t.timestamps
    end
  end
end
