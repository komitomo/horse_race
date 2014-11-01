class CreateBettings < ActiveRecord::Migration
  def change
    create_table :bettings do |t|

      t.timestamps
    end
  end
end
