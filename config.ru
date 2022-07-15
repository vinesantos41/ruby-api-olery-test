require_relative 'config/application'

map '/v1' do
  run Olery::V1::Server
end

