module Api
  class AssetsController < ApplicationController
    # /api/list
    # Return all the assets
    # GET
    def index 
      assets = Asset.all

      render json: return_all_assets_fields(assets)
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
      asset = Asset.new(asset_params)

      if asset.save
        render json: return_asset_fields(asset)
      else 
        render json: {error: asset.errors}, status: 442
      end
    end

    # /api/modify/:id
    # update asset based upon id provided
    # PUT/PATCH
    def update 
      asset = Asset.find(params[:id])

      if asset.update(asset_params)
        render json: return_asset_fields(asset)
      else
        render json: {error: asset.error.messages}, status: 442
      end
    end

    # /api/remove/:id
    # delete asset based upon id provided
    # DELETE
    def destroy 
      asset = Asset.find(params[:id])

      if asset.destroy
        head :no_content
      else
        render json: {error: asset.error.messages}, status: 442
      end
    end

    private

    def show_milliseconds(time)
      (time.to_f * 1000).to_i
    end

    def return_all_assets_fields(assets)
      assets.map { |asset| return_asset_fields(asset) }
    end

    def return_asset_fields(asset)
      {
        id: asset.id,
        name: asset.name, 
        active: asset.active, 
        watts: asset.watts, 
        restarted_at: show_milliseconds(asset.restarted_at)
      }
    end

    def asset_params
      params.require(:asset).permit(:name, :watts, :active, :restarted_at)
    end

  end
end
