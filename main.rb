require 'redis-objects'
require 'pry'
require 'connection_pool'
require_relative 'events_loop'

class Main
	def initialize
		initialize_connection_pool
		start_events_loop
	end	

  private

  def initialize_connection_pool
		Redis::Objects.redis = connection_pool
  end

  def start_events_loop
  	events_loop.start
  end

  def events_loop
  	@_events_loop ||= EventsLoop.new
  end

  def connection_pool
    @_connection_pool ||= ConnectionPool.new(size: 5, timeout: 5) { Redis.new(:host => '127.0.0.1', :port => 6379) }
  end
end