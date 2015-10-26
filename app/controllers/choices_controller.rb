class ChoicesController < ApplicationController

  def new
    @choice = Choice.new
  end

  def create
    @choice = Choice.new(choice_params)
    if @choice.save
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    end
  end

  def update
    @choice = Choice.find(params[:id])
    if params[:vote_a] == 'a'
      @choice.update(vote_a: (@choice.vote_a + 1))
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    elsif params[:vote_b] == 'b'
      @choice.update(vote_b: (@choice.vote_b + 1))
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    end
  end

  private

  def choice_params
    params.require(:choice).permit(:option_a, :option_b)
  end
end
