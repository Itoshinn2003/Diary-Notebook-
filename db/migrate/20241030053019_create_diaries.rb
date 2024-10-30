class CreateDiaries < ActiveRecord::Migration[7.1]
  def change
    create_table :diaries id: false do |t|
      t.references :user, null: false, foreign_key: true
      t.text :content
      t.date :date

      t.timestamps
    end
    add_index :diaries, [:user_id, :date], unique: true
  end
end
