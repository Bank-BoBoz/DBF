class UserInformation < ActiveRecord::Migration
  def self.up
    add_column :users, :firstName, :string
    add_column :users, :lastName, :string
    add_column :users, :phoneNumber, :string

  end

  def self.down
    remove_column :users, :firstName
    remove_column :users, :lastName
    remove_column :users, :phoneNumber
  end
end
