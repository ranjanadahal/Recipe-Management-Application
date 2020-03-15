class Addclmntorecipies < ActiveRecord::Migration[5.1]
  def change
      add_column :recipes, :counter, :integer, default: 0
  end
end
