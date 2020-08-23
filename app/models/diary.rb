class Diary < ApplicationRecord
  belongs_to :user
  scope :diaries_user, -> (diary_id){ where("item_id = ?", item_id ) }
end
