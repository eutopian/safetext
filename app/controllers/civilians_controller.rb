class CiviliansController < ApplicationController




def index
  @civilians = Civilian.all
end

def show
  
end

end