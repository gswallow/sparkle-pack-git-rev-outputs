Gem::Specification.new do |s|
  s.name = 'sparkle-pack-git-rev-outputs'
  s.version = '0.0.1'
  s.licenses = ['MIT']
  s.summary = 'Creates outputs for an AWS Cloudformation Stack'
  s.description = 'SparklePack to provide git remote URLs and git revision outputs to a Cloudformation stack output'
  s.authors = ['Greg Swallow']
  s.email = 'gswallow@gmail.com'
  s.homepage = 'https://github.com/gswallow/sparkle-pack-git-rev-outputs'
  s.files = Dir[ 'lib/sparkleformation/components/*' ] + %w(sparkle-pack-git-rev-outputs.gemspec lib/sparkle-pack-git-rev-outputs.rb)
end
