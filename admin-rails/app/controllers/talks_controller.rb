class TalksController < ApplicationController
  def index
    @talks = Talk.all
  end

  def add_talk
    @talk = Talk.new
  end

  def create
    binding.pry
    @talk = Talk.new(get_talk_params)
    if @talk.save
      redirect_to talks_path
    else
      render :add_talk
    end
  end

  def edit_talk
  end

  def get_talk_params
    binding.pry
    params.require(:talk).permit(:title, :blurb, :description, :date, :limit, :duration, :speaker_id)
  end
end
