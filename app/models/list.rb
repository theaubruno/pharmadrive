class List < ApplicationRecord
  belongs_to :patient
  belongs_to :user
  has_many :drugs

  def ready?
    self.ready_at.nil? ? false : true
  end

  def delivered?
    self.delivered_at.nil? ? false : true
  end

end
