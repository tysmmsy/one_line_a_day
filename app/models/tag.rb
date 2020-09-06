class Tag < ApplicationRecord
  has_many :tweet_tag_relations
  has_many :diaries, through: :tweet_tag_relations
end
