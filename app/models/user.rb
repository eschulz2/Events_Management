class User < ActiveRecord::Base
	validates :email, presence: true, uniqueness: true
	validates :password_digest, presence: true

	has_many :created_events, class_name: "Event", foreign_key: "user_id"
	has_many :attended_events, through: :event_attendances, source: :event_attendances

	has_many :event_attendances

	has_secure_password
end
