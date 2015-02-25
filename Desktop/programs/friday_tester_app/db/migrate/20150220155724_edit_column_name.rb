class EditColumnName < ActiveRecord::Migration
  def change
   rename_column :personas, :personanme, :personaname
  end
end
