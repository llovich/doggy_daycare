class CreateVets < ActiveRecord::Migration
  def change
    create_table :vets do |t|
      t.string :doctor
      t.references :clinic, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
