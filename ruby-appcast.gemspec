Gem::Specification.new do |s|
  s.name	= 'ruby-appcast'
  s.version	= '1.0.0'
  s.date	= '2013-08-08'
  s.summary	= 'Simple appcast/release notes generator for Sparkle'
  s.description	= ''
  s.authors	= ['Jason DiCioccio']
  s.email	= 'jd@ods.org'
  s.files	= ["lib/ruby-appcast.rb", "lib/appcast.rb",
		   "lib/release_notes.rb"]
  s.homepage	= 'http://github.com/screenhero/ruby-appcast'
  s.license	= 'BSD'

  s.add_runtime_dependency 'RedCloth', '~> 4.2.9'
end
