module Olery
  class GroupSubscription < Sequel::Model
    many_to_one :contracts, key: :contract_id
  end
end
