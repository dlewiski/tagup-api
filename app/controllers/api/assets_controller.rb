module Api
  class AssetsController < ApplicationController
    def index 
      @assets = Asset.all

      render json: @assets
    end

    def show 
      @asset = Asset.find(params[:id])

      render json: @asset
    end

    private

    def asset_params
    end

  end
end
