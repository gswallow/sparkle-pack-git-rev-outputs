SparkleFormation.component(:git_rev_outputs) do
  ENV['git_repo'] ||= ::IO.popen('git ls-remote --get-url origin').read.chomp
  ENV['git_rev']  ||= ::IO.popen('git rev-parse HEAD').read.chomp

  outputs do
    git_repository do
      description 'Source code origin'
      value ENV['git_repo']
    end
    git_revision do
      description 'Source code revision'
      value ENV['git_rev']
    end
  end
end
