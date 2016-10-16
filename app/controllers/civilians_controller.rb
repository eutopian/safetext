class CiviliansController < ApplicationController




def index
  @civilians = Civilian.all
  respond_to do |format|
    format.html {render :show}
    format.json {render json: @civilians.to_json}
  end
end


def addresses
end

def show
  
end

end