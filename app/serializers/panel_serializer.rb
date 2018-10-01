class PanelSerializer < ActiveModel::Serializer
  attributes :id, :name, :kind, :number
  has_one :chapter
end
