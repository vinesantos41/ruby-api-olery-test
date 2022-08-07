module Olery
  class Contract < Sequel::Model
    one_to_many :users
    one_to_many :group_subscriptions
  end
end
