class AddRegistrationsCountToLines < ActiveRecord::Migration

  def self.up

    add_column :lines, :registrations_count, :integer, :null => false, :default => 0

  end

  def self.down

    remove_column :lines, :registrations_count

  end

end
