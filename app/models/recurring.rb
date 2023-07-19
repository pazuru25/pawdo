class Recurring < ActiveHash::Base
  self.data = [
    { id: 1, name: 'なし', value: 'none' },
    { id: 2, name: '毎日', value: 'daily' },
    { id: 3, name: '毎週', value: 'weekly' },
    { id: 4, name: '毎月', value: 'monthly' }
  ]

  def self.options
    data.map { |option| [option[:name], option[:value]] }
  end
end
