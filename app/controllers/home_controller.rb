class HomeController < ApplicationController
  def index
    @choices = Choice.all
  end

end
