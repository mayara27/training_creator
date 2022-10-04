class Exercise < ApplicationRecord
  validates :name, :categories_id, presence: true
end
