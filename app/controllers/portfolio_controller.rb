class PortfolioController < ApplicationController

  def index
    @works = Work.all
  end
end
