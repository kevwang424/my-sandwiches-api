class SandwichSerializer < ActiveModel::Serializer
  attributes :id, :ingredients, :location, :price, :tasting_notes

end
