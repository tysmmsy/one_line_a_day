class DiariesController < ApplicationController
  def index
    @diaries = Diary.all.order(id:"DESC")
    @diaries = @diaries.includes(:user)
  end

  def create
    @user = User.find(params[:user_id])
    @diary = @user.diaries.new(diary_params)
    if @diary.save
      redirect_to user_diaries_path(@user)
    else
      @diaries = @diaries.includes(:user)
      render :index
    end
  end

  private

  def diary_params
    params.permit(:content).merge(user_id: current_user.id)
  end
end
