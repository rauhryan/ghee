# encoding: UTF-8
require 'ghee/version'
require 'ghee/connection'
require 'ghee/resource_proxy'
require 'ghee/api/gists'
require 'ghee/api/users'

class Ghee
  attr_reader :connection

  include Ghee::API::Gists
  include Ghee::API::Users

  # Instantiates Ghee, accepts an access_token
  # for authenticated access
  #
  # Access_token - String of the access_token
  #
  def initialize(access_token=nil)
    @connection = Ghee::Connection.new(access_token)
  end
end