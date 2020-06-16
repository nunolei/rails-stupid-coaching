class PagesController < ApplicationController

  def about
  end

  def answer
    @question = params[:question]
    if @question.blank?
      @answer = "Don't be shy, I can't hear you!"
    elsif @question =~ /i am going to work/i
      @answer = "Great! Finally!"
    elsif @question.ends_with("?")
      @answer = "Those fucking questions, get up, take a cold shower, get dressed and go to work!"
    else
      @answer = "I don't care, get out of bed and go to work!"
    end
  end
end
