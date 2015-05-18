class TalksController < ApplicationController
  def index
    @talks = Talk.all
  end

  def add_talk
    #@talk = Talk.new(get_talk_params)
  end

  def edit_talk
  end
end
