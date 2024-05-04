class CreateDailyLogs < ActiveRecord::Migration[7.1]
  def change
    create_table :daily_logs do |t|
      t.date :date
      t.integer :calories_consumed
      t.float :weight
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
