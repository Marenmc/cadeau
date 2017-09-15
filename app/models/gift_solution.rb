class GiftSolution < ActiveRecord::Base
  has_many :recommendations

  validates :name, presence: true
end
