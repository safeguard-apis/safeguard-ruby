Gem::Specification.new do |s|
  s.name        = 'safeguard-api'
  s.version     = '0.2.1'
  s.licenses    = ['MIT']
  s.summary     = "Safeguard API"
  s.description = "Gem to access Safeguard API"
  s.authors     = [""]
  s.files       = [
    'lib/safeguard-api.rb',
    'lib/safeguard-api/api.rb'
  ]
  s.email       = 'contato@vizir.com.br'
  s.homepage    = ''

  s.add_dependency('httpclient', '>= 2.3.4')

  s.add_development_dependency('rake')
  s.add_development_dependency('rspec')
  s.add_development_dependency('pry')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('simplecov')
  s.add_development_dependency('reek')
end
