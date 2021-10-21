class ChangeEnglishToBoolean < ActiveRecord::Migration[6.1]
  def change
    change_column :movies, :english, 'boolean USING CAST(english as boolean)'
  end
end
