class Property < ApplicationRecord
  acts_as_favoritable

  has_many_attached :photos
end
