Rails.application.routes.draw do

  mount DatastoreRedis::Engine => "/datastore_redis"
end
