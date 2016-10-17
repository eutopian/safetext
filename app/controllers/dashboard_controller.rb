class DashboardController < ApplicationController
  def index
    @civilians = Civilian.all
    @question = Question.new
  end
end
