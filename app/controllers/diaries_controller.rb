class DiariesController < ApplicationController

  def index
    @diaries = Diary.where(user_id: current_user.id).all.order(id: 'DESC')
  end

  def new

  end

  def create
    # binding.pry
    @user = User.find(params[:user_id])
    @diary = DiariesTag.new(diary_params)
    if @diary.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def destroy
    @diary = Diary.find(params[:id])
    @diary.destroy
    redirect_to root_path
  end

  def search
    return nil if params[:input] == ""
    tag = Tag.where(['name LIKE ?', "%#{params[:input]}%"] )
    render json:{ keyword: tag }
  end

  # def tag_search
  #   return nil if params[:input] == ""
  #   tag = Tag.where(['name LIKE ?', "%#{params[:input]}%"] )
  #   render json:{ keyword: tag }
  # end

  private

  def diary_params
    params.permit(:content, :date, :name).merge(user_id: current_user.id)
  end
end
