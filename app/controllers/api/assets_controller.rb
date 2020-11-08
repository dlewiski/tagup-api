module Api
  class AssetsController < ApplicationController
    # /api/list
    # Return all the assets
    # GET
    def index 
      @assets = Asset.all

      render json: @assets
    end

    # /api/read/:id
    # return assest based upon id provided
    # GET
    def show 
      @asset = Asset.find(params[:id])

      render json: @asset
    end

    private

    def asset_params
    end

  end
end
