class Tag < ApplicationRecord
  has_many :diary_tag_relations
  has_many :diaries, through: :diary_tag_relations, dependent: :destroy
  
  validates :name, presence: true
  validates :name, uniqueness: true
end
