class AssetSerializer
  include JSONAPI::Serializer
  set_type :asset
  set_id :id
  attributes :name, :active, :watts

  # return reactivated_at as unix timestamp in milliseconds
  attribute :reactivated_at do |object|
    (object.reactivated_at.to_f * 1000).to_i
  end
end
