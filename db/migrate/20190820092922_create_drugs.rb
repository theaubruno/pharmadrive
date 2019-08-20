class CreateDrugs < ActiveRecord::Migration[5.2]
  def change
    create_table :drugs do |t|
      t.references :list, foreign_key: true
      t.string :drug_name
      t.string :dosage
      t.string :posology
      t.string :quantity
      t.string :qsp

      t.timestamps
    end
  end
end
