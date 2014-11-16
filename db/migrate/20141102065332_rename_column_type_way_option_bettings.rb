class RenameColumnTypeWayOptionBettings < ActiveRecord::Migration
  def change
  	rename_column :bettings, :type, :betting_type
	rename_column :bettings, :way, :betting_way
	rename_column :bettings, :option, :betting_option
    rename_column :bettings, :horse_num, :horse_nums
  end
end
