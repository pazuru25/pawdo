class CreatePlans < ActiveRecord::Migration[7.0]
  def change
    create_table :plans do |t|
      t.string :title,               null: false
      t.integer :plan_save_id,       null: false
      t.integer :schedule_date,      null: false
      t.integer :schedule_time,      null: false
      t.integer :color_id,           null: false
      t.integer :repetition_id,      null: false
      t.integer :recurring_id,       null: false
      t.integer :notification_id,    null: false
      t.datetime :start_time,        null: false
      t.references :user,            null: false, foreign_key: true
      t.timestamps
    end
  end
end
