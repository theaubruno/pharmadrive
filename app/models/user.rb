class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :patients
  has_many :lists
  # has_many :lists, through: :patients
  # has_many :patients, through: :lists

  def pharmacy_patients
    Patient.where(id: self.lists.map(&:patient_id).uniq)
  end

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
