class List < ApplicationRecord
  belongs_to :patient
  belongs_to :user
  has_many :drugs

  has_many :drugs, inverse_of: :list
  accepts_nested_attributes_for :drugs,
                                reject_if: proc { |attributes| attributes[:drug_name].blank? },
                                allow_destroy: true
end
