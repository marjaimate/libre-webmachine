require 'webmachine'
require "yaml"
require 'json'

# Index resource
class CiudadesResource < Webmachine::Resource
  # GET and HEAD are allowed by default, but are shown here for clarity.
  def allowed_methods
    ['GET','HEAD']
  end

  def content_types_provided
    [['application/json', :to_json]]
  end

  # Return a Truthy or Falsey value
  def resource_exists?
    ciudades
  end

  def ciudades
    @ciudades = YAML.load_file("ciudades.yml")
  end

  def to_json
    ciudades.to_json
  end
end

# Show resource
class CiudadResource < Webmachine::Resource
  def allowed_methods
    ["GET"]
  end

  def content_types_provided
    [["application/json", :to_json]]
  end

  def resource_exists?
    ciudad
  end

  def to_json
    ciudad.to_json
  end

  private

  def ciudad
    ciudades = YAML.load_file("ciudades.yml")
    ciudades[id]
  end

  def id
    request.path_info[:ciudad]
  end
end

MyApp = Webmachine::Application.new do |app|
  # Configure your app like this:
  app.configure do |config|
    config.port = 9292
    config.adapter = :WEBrick
  end
  # And add routes like this:
  app.add_route ['ciudades'], CiudadesResource
  app.add_route ['ciudades', :ciudad], CiudadResource
end

MyApp.run
