class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.references :patient, foreign_key: true
      t.string :note
      t.datetime :prescribed_at
      t.references :user, foreign_key: true
      t.datetime :ready_at
      t.boolean :delivered

      t.timestamps
    end
  end
end
