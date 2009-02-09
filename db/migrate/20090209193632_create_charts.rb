class CreateCharts < ActiveRecord::Migration
  def self.up
    create_table :charts do |t|
      t.string :title
      t.string :thing1
      t.string :thing2
      t.string :thing3
      t.string :thing4
      t.string :thing5

      t.timestamps
    end
  end

  def self.down
    drop_table :charts
  end
end
