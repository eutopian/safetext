class DashboardController < ApplicationController
  def index
    @civilians = Civilian.all
  end
end
