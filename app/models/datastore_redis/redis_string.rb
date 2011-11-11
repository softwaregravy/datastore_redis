module DatastoreRedis
  class RedisString 
    class << self
      def all 
        DatastoreRedis::RedisConnection.connection.keys
      end 

      def find(key) 
        DatastoreRedis::RedisConnection.connection[key]
      end 

      def create(key, value) 
        DatastoreRedis::RedisConnection.connection[key] = value
      end 

      def update(key, value) 
        DatastoreRedis::RedisConnection.connection[key] = value
      end 

      def destroy(key) 
        DatastoreRedis::RedisConnection.connection.del(key) 
      end 

      def destroy_all 
        DatastoreRedis::RedisConnection.connection.flushall
      end 
    end
  end 
end
