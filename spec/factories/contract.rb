FactoryGirl.define do
  factory :contract, :class => 'Olery::Contract' do
    name { Faker::Name.name }
    start_date { Date.today }
  end
end
