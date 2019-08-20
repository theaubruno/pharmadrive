class RemoveDoctorNamePharmacyNameToUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :pharmacy_name
    remove_column :users, :doctor_name
    add_column :users, :name, :string
  end
end
