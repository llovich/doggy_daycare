class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|
      t.string :name
      t.string :phone
      t.string :fax

      t.timestamps null: false
    end
  end
end
