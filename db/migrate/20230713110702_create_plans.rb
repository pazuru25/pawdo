class CreatePlans < ActiveRecord::Migration[7.0]
  def change
    create_table :plans do |t|
      t.string :title, null: false
      t.string :schedule_date, null: false
      t.string :schedule_time, null: false
      t.string :color_id, null: false
      t.string :notification, default: ""  # 通知方法を文字列として保存
      t.text :memo
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
