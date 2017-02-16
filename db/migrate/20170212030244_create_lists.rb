class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :name

      t.timestamps

      # refer user
      t.references :users, foreign_key: true
    end
  end
end
