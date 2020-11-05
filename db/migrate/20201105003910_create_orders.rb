class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.boolean :paid
      t.references :libro, foreign_key: true

      t.timestamps
    end
  end
end