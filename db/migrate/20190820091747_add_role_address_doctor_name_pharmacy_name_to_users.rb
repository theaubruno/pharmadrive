class AddRoleAddressDoctorNamePharmacyNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :role, :string
    add_column :users, :address, :string
    add_column :users, :doctor_name, :string
    add_column :users, :pharmacy_name, :string
  end
end
