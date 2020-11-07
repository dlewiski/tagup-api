module Api
  class AssetsController < ApplicationController
    def index 
      @assets = Asset.all

      render json: @assets
    end
  end
end
