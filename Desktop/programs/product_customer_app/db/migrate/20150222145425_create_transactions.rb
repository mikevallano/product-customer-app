class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.belongs_to :customer, index: true
      t.belongs_to :product, index: true

      t.timestamps null: false
    end
  end
end
