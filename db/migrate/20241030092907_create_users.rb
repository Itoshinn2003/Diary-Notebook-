class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users, id: false do |t|
      t.string :user_id, null: false, primary_key: true, limit: 20 
      t.string :name, null: false, limit: 20 
      t.string :password_digest, null: false, limit: 20 

      t.timestamps
    end
  end
end
