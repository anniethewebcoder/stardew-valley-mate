class CreatePoints < ActiveRecord::Migration[8.0]
  def change
    create_table :points do |t|
      t.string :name
      t.integer :normal
      t.integer :winter_star
      t.integer :birthday

      t.timestamps
    end
  end
end
