class StaticpageController < ApplicationController

  def bio
    @gigs = Gig.all
  end

end
