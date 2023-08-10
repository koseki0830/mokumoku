# frozen_string_literal: true

class Mypage::ProfilesController < Mypage::BaseController
  def show
    @user = current_user
    @hobby = current_user.hobby
    @profile = current_user.profile
  end

  def update
    @user = User.find(current_user.id)
    if @user.update(profile_params)
      redirect_to mypage_profile_path, success: 'プロフィールを更新しました'
    else
      render :show
    end
  end

  private

  def profile_params
    params.require(:user).permit(:name, :avatar, :email, :hobby, :profile)
  end
end
