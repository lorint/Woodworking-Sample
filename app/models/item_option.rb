class ItemOption < ApplicationRecord
  # Why the fuck do we need required: false here???
  # I think this is a bug.
  belongs_to :item, required: false
  belongs_to :option

  # For use when we drop a <select> onto a form to choose a wood, cushion, or covering
  attr_accessor :option_type, :options
end
