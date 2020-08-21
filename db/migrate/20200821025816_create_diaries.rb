class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.string :title
      t.text   :text,     null: false
      t.references :user, foreign_key: true
      t.references :tag,  foreign_key: true 
      t.timestamps
    end
  end
end
