class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.text :detail
      t.date :arrivalDate
      t.date :lastUpdate
      t.references :school
      t.timestamps
    end
  end
end
