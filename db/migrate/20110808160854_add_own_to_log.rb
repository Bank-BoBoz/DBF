class AddOwnToLog < ActiveRecord::Migration
  def self.up
    add_column :logs, :own, :string
  end

  def self.down
    remove_column :logs, :own
  end
end
