class TwitsController < ApplicationController

  def index
    @twits = Twit.latest 
  end

end
