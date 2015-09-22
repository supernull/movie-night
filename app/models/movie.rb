class Movie < ActiveRecord::Base
  belongs_to :event
  has_many :votes

  validates :title, presence: true
  validates :url, presence: true

end
