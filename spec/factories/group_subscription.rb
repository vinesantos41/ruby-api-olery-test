FactoryGirl.define do
  factory :group_subscription, class: 'Olery::GroupSubscription' do
    association :contract, class_name: 'Olery::Contract'
    association :group, class_name: 'Olery::Group'
  end
end
