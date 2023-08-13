FactoryBot.define do
  factory :plan do
    title { Faker::Lorem.sentence }
    schedule_date { Date.today }
    schedule_time { Time.now }
    color_id { 'color1' }
  end
end
