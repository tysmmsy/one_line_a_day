class DiariesController < ApplicationController
  def index
    @diaries = Diary.where(user_id: current_user.id).all.order(id: 'DESC')
  end

  def new
    @diary = Diary.new
  end

  def create
    @user = User.find(params[:user_id])
    @diary = @user.diaries.new(diary_params)
    if @diary.save
      redirect_to user_diaries_path(@user)
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
    @diaries = if params[:content].present?
      Diary.where('content LIKE ?', "%#{params[:content]}%").where(user_id: current_user.id)
    else
      Diary.none
    end
  end

  private

  def diary_params
    params.permit(:content, :date).merge(user_id: current_user.id)
  end
end
