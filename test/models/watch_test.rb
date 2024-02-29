require "test_helper"

class WatchTest < ActiveSupport::TestCase
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
