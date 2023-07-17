class Color < ApplicationRecord
  self.data = [
    { id: 1, name: '白' },
    { id: 2, name: '黄' },
    { id: 3, name: '橙' },
    { id: 4, name: '緑' },
    { id: 5, name: '青' },
    { id: 6, name: '紫' },
    { id: 7, name: '桃' },
    { id: 8, name: '赤' },
    { id: 9, name: '茶' },
    { id: 10, name: '鼠' }
  ]

  include ActiveHash::Associations
  has_many :plans
end
