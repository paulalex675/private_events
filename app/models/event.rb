class Event < ApplicationRecord
    belongs_to :host, class_name: "User", foreign_key: "user_id"
    has_many :rsvps
    has_many :attendees, through: :rsvps, source: :user

  def past?
    date < Time.now ? true : false
  end

  def upcoming?
    date > Time.now ? true : false
  end
end
