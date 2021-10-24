class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, limit: 128, null: false
      t.string :email, limit: 256, null: false

      t.timestamps
    end
    add_index :users, :name
  end
end
