module Api
  class AssetsController < ApplicationController
    # /api/list
    # Return all the assets
    # GET
    def index 
      assets = Asset.all

      render json: return_all_assets_fields(assets)

      # render json: AssetSerializer.new(assets).serializable_hash.to_json
    end

    # /api/read/:id
    # return asset based upon id provided
    # GET
    def show 
      asset = Asset.find(params[:id])

      render json: return_asset_fields(asset)
    end

    # /api/create
    # create a new asset
    # POST
    def create
      @asset = Asset.new(asset_params)

      if asset.save
        render json: @asset
      else 
        render json: {error: @asset.error.messages}, status: 442
      end
    end

    # /api/modify/:id
    # update asset based upon id provided
    # PUT/PATCH
    def update 
      @asset = Asset.find(params[:id])

      if @asset.update(asset_params)
        render json: @asset
      else
        render json: {error: @asset.error.messages}, status: 442
      end
    end

    # /api/remove/:id
    # delete asset based upon id provided
    # DELETE
    def destroy 
      @asset = Asset.find(params[:id])

      if @asset.destroy
        head :no_content
      else
        render json: {error: @asset.error.messages}, status: 442
      end
    end

    private

    def return_all_assets_fields(assets)\
      assets.each do |asset|
        {name: asset.name, active: asset.active, watts: asset.watts, restarted_at: asset.restarted_at}
      end
    end

    def return_asset_fields(asset)
      {name: asset.name, active: asset.active, watts: asset.watts, restarted_at: asset.restarted_at}
    end

    def asset_params
      params.require(:asset).permit(:name, :watts, :active, :restarted_at)
    end

  end
end
