namespace :deploy do
  desc "Deploy to staging"
  task :staging do
    puts Dir.pwd
    system "bundle exec jekyll build --destination _site --config _config.yml,_config_github.yml"
    Dir.chdir "_site" do
      system "git init"
      system "git remote add origin https://github.com/GardenCityRuby/GCRC2015.git"
      system "git add --all && git commit -m 'Updating staging'"
      system "git push origin master:gh-pages"
    end
  end
end
