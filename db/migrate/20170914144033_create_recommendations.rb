class CreateRecommendations < ActiveRecord::Migration[5.1]
  def change
    create_table :recommendations do |t|
      t.integer :gift_solution_id, null: false
      t.integer :user_id, null: false
      t.integer :choice_text
      t.integer :algorithm_path

      t.timestamps
    end
  end
end
