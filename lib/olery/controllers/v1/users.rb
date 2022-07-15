module Olery
  module V1
    module Controller
      class Users < ::Olery::Controller::Base

        namespace '/users' do

          error Sequel::NoMatchingRow do
            json_error 'The specified user does not exist', 404
          end

          before do
            content_type :json
          end

          get '' do
            json data: User.all.map { |u| serialize(u) }
          end

          get '/:id' do
            user = User.with_pk! params[:id]
            json data: serialize(user)
          end

          def serialize user
            user.to_hash.slice(:id, :name, :email)
          end
        end
      end
    end
  end
end
