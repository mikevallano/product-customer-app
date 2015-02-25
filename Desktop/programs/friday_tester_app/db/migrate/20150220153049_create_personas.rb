class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :personanme
      t.integer :age
      t.text :description

      t.timestamps null: false
    end
  end
end
