# sparkle-pack-git-rev-outputs
Provides a pair of output values describing which git repository and which git
commit hash from which a cloudformation template is generated.

## Usage

Add the sparkle pack to your Gemfile...

```
source 'https://rubygems.org'

gem 'sfn'
gem 'sparkle-pack-git-rev-outputs',     :git => 'https://github.com/gswallow/sparkle-pack-git-rev-outputs.git'
```

...and to your .sfn file...

```
Configuration.new do
  sparkle_pack [ 'sparkle-pack-git-rev-outputs' ]
...
```

...and finally to your template:

```
SparkleFormation.new(:buckets).load(:base, :git_rev_outputs).overrides do
...
```

That's it.  Generated cloudformation templates will have two outputs: "Git repo" and "Git revision."
