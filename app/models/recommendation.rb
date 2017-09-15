class Recommendation < ActiveRecord::Base
  belongs_to :gift_solution
  belongs_to :users

  validates :gift_solution_id, presence: true
  validates :user_id, presence: true


end
