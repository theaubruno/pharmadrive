class Drug < ApplicationRecord
  belongs_to :list

  def title
    drug_name
  end
end
