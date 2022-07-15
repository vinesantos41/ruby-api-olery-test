module Olery
  class Contract < Sequel::Model

    one_to_many :user, key: :user_id

  end
end
