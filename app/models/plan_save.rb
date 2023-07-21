class PlanSave < ApplicationRecord
  belongs_to :user
  has_one :plan
end
