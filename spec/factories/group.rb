FactoryGirl.define do
  factory :group, class: 'Olery::Group' do
    sequence(:name) { |n| "Group #{n}" }
  end
end
