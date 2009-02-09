class AddAmountToChart < ActiveRecord::Migration
  def self.up
    add_column :charts, :thing1amount, :string
    add_column :charts, :thing2amount, :string
    add_column :charts, :thing3amount, :string
    add_column :charts, :thing4amount, :string
    add_column :charts, :thing5amount, :string
  end

  def self.down
    remove_column :links, :thing1amount
    remove_column :links, :thing2amount
    remove_column :links, :thing3amount
    remove_column :links, :thing4amount
    remove_column :links, :thing5amount
  end
end