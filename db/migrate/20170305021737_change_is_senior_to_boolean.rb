class ChangeIsSeniorToBoolean < ActiveRecord::Migration[5.0]
  def change
  	change_column :programmers, :is_senior, :boolean
  end
end
