class CreateVillagers < ActiveRecord::Migration[8.0]
  def change
    create_table :villagers do |t|
      t.string :name
      t.string :address
      t.string :town
      t.string :season
      t.integer :birthday
      t.boolean :dating
      t.string :gender

      t.timestamps
    end
  end
end
