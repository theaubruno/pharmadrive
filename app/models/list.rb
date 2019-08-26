class List < ApplicationRecord
  belongs_to :patient
  belongs_to :user, optional: true

  has_many :drugs

  def ready?
    self.ready_at.nil? ? false : true
  end

  def delivered?
    self.delivered_at.nil? ? false : true
  end


  has_many :drugs, inverse_of: :list
  accepts_nested_attributes_for :drugs,
                                reject_if: proc { |attributes| attributes[:drug_name].blank?},
                                allow_destroy: true

end


