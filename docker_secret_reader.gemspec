Gem::Specification.new do |spec|
  spec.name        = 'docker_secret_reader'
  spec.version     = '0.0.1-pre'
  spec.summary     = "Docker Secret Reader"
  spec.description = "A Gem to access Secret Data from within a docker contianer. Supporting Docker Swarm Secrets and Kubernetes Secrets"
  spec.authors     = ["David Erler"]
  spec.email       = 'daviderler1959@gmail.com'
  spec.files       = ["lib/docker_secret_reader.rb"]
  spec.homepage    = 'https://rubygems.org/gems/docker_secret_reader'
  spec.license     = 'MIT'
  spec.required_ruby_version = '>= 2.3.5'

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'mocha'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'minitest-reporters'
end
