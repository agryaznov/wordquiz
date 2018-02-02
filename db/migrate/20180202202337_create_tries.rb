class CreateTries < ActiveRecord::Migration[5.1]
  def change
    create_table :tries do |t|
      t.string :result
      t.belongs_to :word, index: true
      t.timestamps
    end
  end
end
