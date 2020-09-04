class Diary < ApplicationRecord
  belongs_to :user

  validates :content, presence: true
  validates :date, presence: true

  def self.search(search)
    Diary.where(['content LIKE (?) OR date LIKE(?)', "%#{search}%", "%#{search}%"])
end
end
