module Api
  class VpostsController < ApplicationController
    respond_to :json

    def index
      @vposts = Vpost.all
      respond_with @vposts
    end

    def create
      @vpost = Vpost.create(:identifier => "dummytitle", :payload => params.to_s)
      respond_with @vpost
    end
  end
end
