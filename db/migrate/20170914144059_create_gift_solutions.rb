class CreateGiftSolutions < ActiveRecord::Migration[5.1]
  def change
    create_table :gift_solutions do |t|
      t.string :name, null: false
      t.string :description
      t.string :links

      t.timestamps
    end
  end
end
