class UsersController < ApplicationController
  def show
    user = User.find_by(id: params[:id])
    @blogs = Like.where(user_id: user.id)

  end
end