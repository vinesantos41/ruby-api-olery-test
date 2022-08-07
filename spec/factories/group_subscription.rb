FactoryGirl.define do
  factory :group_subscription, class: 'Olery::GroupSubscription' do
    association :contract, class: 'Olery::Contract'
    association :group, class: 'Olery::Group'
  end
end
