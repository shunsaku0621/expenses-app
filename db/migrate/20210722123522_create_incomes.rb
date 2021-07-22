class CreateIncomes < ActiveRecord::Migration[6.0]
  def change
    create_table :incomes do |t|
      t.integer :amount, null: false
      t.integer :category_id, null: false
      t.text :memo
      t.datetime :start_time, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
