FactoryGirl.define do
  factory :hotel_group, class: 'Olery::HotelGroup' do
    association :hotel, class_name: 'Olery::Hotel'
    association :group, class_name: 'Olery::Group'
  end
end
