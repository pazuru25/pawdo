class Repetition < ActiveHash::Base
  self.data = [
    { id: 1, name: 'なし', value: 'none' },
    { id: 2, name: '5分前', value: '5_minutes_before' },
    { id: 3, name: '10分前', value: '10_minutes_before' },
    { id: 4, name: '1時間前', value: '1_hour_before' }
  ]

  def self.options
    data.map { |option| [option[:name], option[:value]] }
  end
end
