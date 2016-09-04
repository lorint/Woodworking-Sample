class Item < ApplicationRecord
  belongs_to :product
  belongs_to :user

  has_many :item_options

  # Allow us to save item_options along with an item.
  # Works along with the item_option_attributes in the params in items_controller
  accepts_nested_attributes_for :item_options
end
