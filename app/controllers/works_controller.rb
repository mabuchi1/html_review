class WorksController < ApplicationController
  def index
    @works = Work.all
  end

  def show
    @work = Work.find(params[:id])
  end

  def new
    @work = Work.new
  end

  def create
    Work.create(work_params)
    redirect_to blogs_path
  end

  private
  def work_params
    params.require(:work).permit(:name, :url, images: []).merge(user_id: current_user.id)
  end
end
