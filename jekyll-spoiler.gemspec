lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'jekyll-spoiler'
  spec.version       = '1.0.2'
  spec.authors       = ['Alberto Strappazzon']
  spec.summary       = 'Jekyll support for spoiler text.'
  spec.description   = 'This plugin provides spoiler text support for Jekyll with a Liquid filter and tag.'
  spec.homepage      = 'https://github.com/Strappzzzon/jekyll-spoiler'
  spec.license       = 'MIT'

  spec.files         = [*Dir['lib/**/*.rb'], 'LICENSE.txt']
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 3.4.2'

  spec.add_dependency 'jekyll', '~> 4.4'
  spec.add_dependency 'kramdown', '~> 2.5'
  spec.add_dependency 'liquid', '~> 4.0'
end
