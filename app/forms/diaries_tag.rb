class DiariesTag

  include ActiveModel::Model
  attr_accessor :content, :name, :date, :user_id

  with_options presence: true do
    validates :content
    validates :name
  end


  def save
    tag = Tag.create(name: name)
    diary = Diary.create(content:  content, date: date, user_id: user_id)
    DiaryTagRelation.create(diary_id: diary.id, tag_id: tag.id)
  end

end