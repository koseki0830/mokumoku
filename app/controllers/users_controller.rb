# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user, only: %i[show follows followers]

  def show; end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      auto_login(@user)
      redirect_to events_path, success: 'ユーザー登録が完了しました'
    else
      flash.now[:danger] = 'ユーザー登録に失敗しました'
      render :new
    end
  end

  # フォロー一覧
  def follows
    @users = user.folllowing_users
  end

  # フォロワー一覧
  def followers
    @users = user.follower_users
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end
end
