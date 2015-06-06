class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :scale
      t.text :detail
      t.references :people
      t.timestamps
    end
  end
end
