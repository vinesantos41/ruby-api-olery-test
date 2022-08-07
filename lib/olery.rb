
require 'json'
require 'sinatra/base'
require 'sinatra/namespace'
require 'sinatra/json'

require 'sequel'

#Controllers
require_relative 'olery/controllers/base'
require_relative 'olery/controllers/v1/users'
require_relative 'olery/controllers/v1/user_hotels'

#Models
require_relative 'olery/models/user'
require_relative 'olery/models/contract'
require_relative 'olery/models/group_subscription'
require_relative 'olery/models/group'
require_relative 'olery/models/hotel'
require_relative 'olery/models/hotel_group'

#Server
require_relative 'olery/v1_server'
