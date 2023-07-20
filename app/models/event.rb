class Event < ApplicationRecord
  belongs_to :user
  belongs_to :color

  validates :title,              presence: true
  validates :schedule_date,      presence: true
  validates :schedule_time,      presence: true
  validates :color_id,           presence: true
  validates :repetition_id,      presence: true
  validates :recurring_id,       presence: true
end
