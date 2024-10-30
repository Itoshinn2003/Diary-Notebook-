

class CreateDiaries < ActiveRecord::Migration[7.1]
  def change
    create_table :diaries, id: false do |t|
      t.string :user_id, null: false, limit: 20
      t.text :content, limit: 500
      t.text :date

      t.timestamps
    end

    add_foreign_key :diaries, :users, column: :user_id, primary_key: :user_id
    add_index :diaries, [:user_id, :date], unique: true
  end
end
