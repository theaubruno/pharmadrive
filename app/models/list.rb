class List < ApplicationRecord
  belongs_to :patient
  belongs_to :user
  has_many :drugs
end
