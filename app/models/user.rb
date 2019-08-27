class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  has_many :patients
  has_many :lists
  after_create :send_welcome_email

  # has_many :lists, through: :patients

  # has_many :pharmacy_patients, through: :lists

  def average_time
    all_time_lists = self.lists.select { |list| list.ready_at != nil }
    all_time_lists.map { |list| ((list.ready_at - list.created_at) / 60000) }.sum / all_time_lists.count
  end

  def average_daily
    today_lists = self.lists.select { |list| list.created_at.day == Time.now.day && list.ready_at != nil }
    today_lists.map { |list| (list.ready_at - list.created_at) / 60 }.sum / today_lists.count
  end

  def sumlists(array)
    lists = []
    array.each do |list|
      if list.delivered? && list.delivered_at.day == Time.now.day
        lists << list
      end
    end
    return lists
  end

  def pharmacy_patients
    Patient.where(id: self.lists.map(&:patient_id).uniq)
  end

  # has_many :patients, through: :lists

  def pharmacy_patients
    Patient.where(id: self.lists.map(&:patient_id).uniq)
  end

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  private

  def send_welcome_email
    UserMailer.with(user: self).welcome.deliver_now
  end
end
