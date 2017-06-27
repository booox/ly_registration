class AddKinsCountToUsers < ActiveRecord::Migration

  def self.up

    add_column :users, :kins_count, :integer, :null => false, :default => 0

  end

  def self.down

    remove_column :users, :kins_count

  end

end
