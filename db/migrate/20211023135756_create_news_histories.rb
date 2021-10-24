class CreateNewsHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :news_histories do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :price
      t.string :detail

      t.timestamps
    end
  end
end
