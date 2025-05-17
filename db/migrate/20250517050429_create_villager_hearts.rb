class CreateVillagerHearts < ActiveRecord::Migration[8.0]
  def change
    create_table :villager_hearts do |t|
      t.references :villager, null: false, foreign_key: true
      t.integer :max_hearts
      t.integer :points

      t.timestamps
    end
  end
end
