class CreateIphoneLogs < ActiveRecord::Migration
  def self.up
    create_table :iphone_logs do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :iphone_logs
  end
end
