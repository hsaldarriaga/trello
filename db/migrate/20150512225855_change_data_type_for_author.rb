class ChangeDataTypeForAuthor < ActiveRecord::Migration
  def self.up
    change_table :tasks do |t|
      t.change :author, :integer
    end
  end
  def self.down
    change_table :tasks do |t|
      t.change :author, :string
    end
  end
end
