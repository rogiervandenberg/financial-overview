class CreateRules < ActiveRecord::Migration[5.0]
  def change
    create_table :rules do |t|
      t.string :name
      t.string :regexp
      t.integer :category_id

      t.timestamps
    end
  end
end
