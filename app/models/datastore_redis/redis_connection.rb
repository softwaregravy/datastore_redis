module DatastoreRedis 
  class RedisConnection
    def connection_string 
      conn_string = ENV["REDISTOGO_URL"] 
      conn_string ||= "localhost:6379"
      conn_string 
    end 

    def get_new_connection 
      uri = URI.parse(connection_string)
      args = {:host => uri.host, :port => uri.port}
      args[:password] = uri.password if uri.password 
      Redis.new(args)
    end 

    def self.connection
      @@redis ||= RedisConnection.new.get_new_connection
      @@redis
    end 
  end 
end 
