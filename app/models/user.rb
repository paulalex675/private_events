class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :events, inverse_of: :host
  has_many :rsvps
  has_many :attended_events, :through => :rsvps, source: :event
end
