class Diary < ApplicationRecord
  has_many :diary_tag_relations
  has_many :tags, through :diary_tag_relations
  belongs_to :user
end
