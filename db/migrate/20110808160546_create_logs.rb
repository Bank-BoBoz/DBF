class CreateLogs < ActiveRecord::Migration
  def self.up
    create_table :logs do |t|
      t.string :value
      t.datetime :time
      t.string :category
      t.string :note

      t.timestamps
    end
  end

  def self.down
    drop_table :logs
  end
end
