class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
    @postimages = @user.postimages
  end

  def edit
  end
end
