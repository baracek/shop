class AddSkupartialToOptionValue < ActiveRecord::Migration
  def self.up
    add_column :option_values, :skupartial, :string
  end

  def self.down
    remove_column :option_values, :skupartial, :string
  end
end
