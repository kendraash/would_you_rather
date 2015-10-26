class ChoicesController < ApplicationController

  def new
    @choice = Choice.new
  end

  def create
    @choice = Choice.new(choice_params)
    if @choice.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def choice_params
    params.require(:choice).permit(:option_a, :option_b)
  end
end
