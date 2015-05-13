class AddResponsibleIdColumnToTasks < ActiveRecord::Migration
  def self.up
  	change_table :tasks do |t|
  	  t.integer :responsible_id
    end
  end
  
  def self.down
  	remove_integer :tasks, :responsible_id
  end
end
