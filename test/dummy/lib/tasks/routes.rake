task :routes => 'app:environment' do 
  Rails.application.reload_routes! 
  all_routes = DatastoreRedis::Engine.routes.routes 
  require 'rails/application/route_inspector' 
  inspector = Rails::Application::RouteInspector.new
  puts inspector.format(all_routes, ENV['CONTROLLER']).join "\n"
end 
