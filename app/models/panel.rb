class Panel < ApplicationRecord
  belongs_to :chapter
  has_many :layers
end
