class AddPairToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :pair, :string
  end

  def self.down
    remove_column :users, :pair
  end
end
