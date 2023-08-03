class Plan < ApplicationRecord
  serialize :notification, Array
  belongs_to :user


  validates :title,              presence: true
  validates :schedule_date,      presence: true
  validates :schedule_time,      presence: true
  validates :color_id,           presence: true
end
