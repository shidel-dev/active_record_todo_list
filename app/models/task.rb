class Task < ActiveRecord::Base
    validates :description, presence: true
    validates :complete, presence: true
    validate :zero_or_one, on: :update
    validate :zero_or_one, on: :create

  def zero_or_one
    errors.add(:complete, "value must be a 0 for false an 1 for true") unless [0,1].include?(complete)
  end

end

