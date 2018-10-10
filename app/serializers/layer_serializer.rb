class LayerSerializer < ActiveModel::Serializer
  attributes :id, :bg_img, :fg_img, :style_class, :layer_kind, :num_of_frames
  has_one :panel
end