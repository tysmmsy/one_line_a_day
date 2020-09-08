class DiariesTag

  include ActiveModel::Model
  attr_accessor :content, :name, :date, :user_id

    validates :content, presence: true
    validates :date, presence: true

  def save
    diary = Diary.create(content: content, date: date, user_id: user_id)
    if diary.valid?
      tag = Tag.create(name: name)
      tag = Tag.where(name: name).first_or_initialize
      DiaryTagRelation.create(diary_id: diary.id, tag_id: tag.id)
    end
  end

end