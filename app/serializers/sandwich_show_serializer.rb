class SandwichShowSerializer < ActiveModel::Serializer
  attributes :id, :ingredients, :location, :date, :price, :tasting_notes
end
