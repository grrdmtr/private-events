class Event < ApplicationRecord
  validates :date, :theme, presence: true

  belongs_to :creator, class_name: "User"
  has_many :attendees_events, dependent: :destroy
  has_many :attendees, through: :attendees_events, dependent: :destroy
end
