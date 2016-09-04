class ProductOption < ApplicationRecord
  belongs_to :product
  belongs_to :option

  # validates_presence_of :product, :option
end
