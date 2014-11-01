class AddColumnBettings < ActiveRecord::Migration
  def change
  	add_column :bettings, :date, :date, after: :id
  	add_column :bettings, :race_course, :string, after: :date
	add_column :bettings, :race_grade, :string, after: :race_course
	add_column :bettings, :race_name, :string, after: :race_grade
	add_column :bettings, :type, :string, after: :race_name
	add_column :bettings, :way, :string, after: :type
	add_column :bettings, :option, :string, after: :way
	add_column :bettings, :favorite, :string, after: :option
	add_column :bettings, :horse_num, :string, after: :favorite
	add_column :bettings, :points, :integer, after: :horse_num
	add_column :bettings, :unit, :integer, after: :points
	add_column :bettings, :total, :integer, after: :unit
	add_column :bettings, :income, :integer, after: :total
	add_column :bettings, :loss, :integer, after: :income
	add_column :bettings, :account, :integer, after: :loss
  end
end
