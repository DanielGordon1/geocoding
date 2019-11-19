class Flat < ApplicationRecord
  geocoded_by :address
  # only if i change the value stored in the address column -> geocode
  after_validation :geocode, if: :will_save_change_to_address?
end
