module Olery
  class Hotel < Sequel::Model
    one_to_many :hotel_groups
  end
end
