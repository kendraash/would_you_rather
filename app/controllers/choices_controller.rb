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

  private

  def choice_params
    params.require(:choice).permit(:option_a, :option_b)
  end
end
