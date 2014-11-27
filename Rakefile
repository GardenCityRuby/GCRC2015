namespace :deploy do
  desc "Deploy to staging"
  task :staging do
    system "bundle exec jekyll build --destination _site --config _config.yml,_config_github.yml"
    Dir.chdir "_site" do
      system "git init"
      system "git remote add origin git@github.com:GardenCityRuby/GCRC2015.git"
      system "git add --all && git commit -m 'Updating staging'"
      system "git push --force origin master:gh-pages"
    end
  end
end
