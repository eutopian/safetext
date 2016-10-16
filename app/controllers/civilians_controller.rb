class CiviliansController < ApplicationController
  def index
    @civilians = Civilian.all
    respond_to do |format|
      format.html {render :index}
      format.json {
        render json: @civilians.to_json(:include => {:questions => {:include => :answer  }})
      }
    end
  end

  def addresses
  end

  def show
  end
end