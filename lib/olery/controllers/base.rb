module Olery
  module Controller
    class Base < Sinatra::Base

      set :root, File.expand_path('../../../../', __FILE__)

      register Sinatra::Namespace

    end
  end
end
