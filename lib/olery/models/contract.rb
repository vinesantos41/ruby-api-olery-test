module Olery
  class Contract < Sequel::Model
    one_to_many :user, key: :user_id
    one_to_many :group_subcriptions
  end
end
