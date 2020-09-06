class Diary < ApplicationRecord
  belongs_to :user
  has_many :diary_tag_relations
  has_many :tags, through: :diary_tag_relations

  validates :content, presence: true
  validates :date, presence: true

  def self.search(search)
    Diary.where(['content LIKE ? OR date LIKE ?', "%#{search}%", "%#{search}%"])
end
end
