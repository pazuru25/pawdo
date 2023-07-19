class Notification < ActiveHash::Base
  self.data = [
    { id: 1, name: '音', value: 'sound' },
    { id: 2, name: '背景', value: 'background' },
    { id: 3, name: 'ポップアップ', value: 'popup' }
  ]

  def self.options
    data.map { |method| [method[:name], method[:value]] }
  end
end
