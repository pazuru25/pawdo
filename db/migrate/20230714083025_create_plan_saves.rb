class CreatePlanSaves < ActiveRecord::Migration[7.0]
  def change
    create_table :plan_saves do |t|
      t.string :title,         null: false
      t.references :user,      null: false, foreign_key: true
      t.timestamps
    end
  end
end
