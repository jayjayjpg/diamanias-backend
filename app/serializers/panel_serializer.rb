class PanelSerializer < ActiveModel::Serializer
  attributes :id, :name, :kind, :number, :description
  has_one :chapter
  has_many :layers
end
