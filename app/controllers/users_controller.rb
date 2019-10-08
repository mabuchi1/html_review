class UsersController < ApplicationController
  def show
    if user_signed_in? && current_user.id == params[:id]
      user = User.find_by(id: params[:id])
      @blogs = Like.where(user_id: user.id)
    else
      redirect_to root_path
    end
  end
end