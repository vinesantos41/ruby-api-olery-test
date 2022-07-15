FactoryGirl.define do
  factory :user, :class => 'Olery::User' do
    name  { Faker::Name.name }
    email { "#{Time.now.to_f}@bar.com" }
  end
end
