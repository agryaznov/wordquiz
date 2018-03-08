class AddSuccessRateToWord < ActiveRecord::Migration[5.1]
  def change
    add_column :words, :success_rate, :decimal, :precision => 3, :scale => 2
  end
end
