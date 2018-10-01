class ChapterSerializer < ActiveModel::Serializer
  attributes :id, :name, :subtitle, :number
  has_many :panels
end
