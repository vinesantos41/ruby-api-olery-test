module Olery
  class User < Sequel::Model

    many_to_one :contracts, key: :contract_id

  end
end
