FactoryGirl.define do
  factory :hotel, class: 'Olery::Hotel' do
    sequence(:name) { |n| "Hotel #{n}" }
  end
end
