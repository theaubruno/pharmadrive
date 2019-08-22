class Drug < ApplicationRecord
  belongs_to :list , inverse_of: :drugs
end
