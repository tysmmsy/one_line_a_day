class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.text   :content,     null: false
      t.date   :date,        null: false
      t.bigint :user_id, foreign_key: true
      t.timestamps
    end
  end
end
