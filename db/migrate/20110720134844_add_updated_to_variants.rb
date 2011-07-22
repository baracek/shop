class AddUpdatedToVariants < ActiveRecord::Migration
  def self.up
    add_column :variants, :updated, :boolean, :default => 1
  end

  def self.down
    remove_column :variants, :updated
  end
end
