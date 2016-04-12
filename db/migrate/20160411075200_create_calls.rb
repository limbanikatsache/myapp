class CreateCalls < ActiveRecord::Migration
  def change
    create_table :calls do |t|
      t.string :number
      t.string :time

      t.timestamps null: false
    end
  end
end
