class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.string :eng
      t.string :rus
      t.timestamps
    end
  end
end
