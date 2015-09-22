class Vote < ActiveRecord::Base
  validates :name, presence: true

  belongs_to :event
  belongs_to :movie
end
