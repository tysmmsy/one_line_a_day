class Diary < ApplicationRecord
  belongs_to :user
  has_many :diary_tag_relations
  has_many :tags, through: :diary_tag_relations

  def self.search(search)
    Diary.where(['content LIKE ? OR date LIKE ?', "%#{search}%", "%#{search}%"])
  end
end
