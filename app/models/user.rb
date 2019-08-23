class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :patients
  has_many :lists
  # has_many :lists, through: :patients
  # has_many :pharmacy_patients, through: :lists

  def average_time
    self.lists.map { |list| (list.ready_at - list.created_at) }.sum / self.lists.count
  end

  def pharmacy_patients
    Patient.where(id: self.lists.map(&:patient_id).uniq)
  end
end
