class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true

  has_many :created_events, foreign_key: :creator_id, class_name: "Event", dependent: :destroy
  has_many :attendees_events, foreign_key: :attendee_id, dependent: :destroy
  has_many :attended_events, through: :attendees_events, source: :event, dependent: :destroy
end
