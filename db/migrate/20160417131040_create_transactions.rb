class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.string :account
      t.date :transaction_date
      t.decimal :amount
      t.text :description
      t.integer :category_id
      t.integer :account_id

      t.timestamps
    end
  end
end
