class Event < ApplicationRecord
  validates :date, presence: true
  validates :theme, presence: true

  belongs_to :creator, foreign_key: :creator_id, class_name: "User"
end
