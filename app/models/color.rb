class Color < ApplicationRecord
  self.data = [
    { id: 1, name: '白', value: 'color1', code: '#fffff9'},
    { id: 2, name: '黄', value: 'color2', code: '#ffffdb' },
    { id: 3, name: '橙', value: 'color3', code: '#f7e2b9' },
    { id: 4, name: '緑', value: 'color4', code: '#e9f8d1' },
    { id: 5, name: '青', value: 'color5', code: '#daf6f9' },
    { id: 6, name: '紫', value: 'color6', code: '#f2ecff' },
    { id: 7, name: '桃', value: 'color7', code: '#fff4ff' },
    { id: 8, name: '赤', value: 'color8', code: '#ff0000' },
    { id: 9, name: '茶', value: 'color9', code: '#cca6ac' },
    { id: 10, name: '鼠', value: 'color10', code: '#efefef' }
  ]

  def self.options
    data.map { |color| [color[:name], color[:value]] }
  end

  def self.code(value)
    color = find_by(value: value)
    color ? color[:code] : nil
  end

  
  include ActiveHash::Associations
  has_many :plans
end
