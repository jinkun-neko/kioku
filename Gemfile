source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'rails', '~> 6.0.3'
gem 'mysql2', '~> 0.5'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem "rspec-rails"
  gem "factory_bot_rails"
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  gem 'letter_opener_web'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'faker'
  gem 'launchy'
  gem 'selenium-webdriver', '>= 4.0.0.rc1'
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'dotenv-rails'
gem 'rails-i18n' #英語を日本語に翻訳するgem
gem 'enum_help'
gem 'devise'  #ログイン機能を実装する。
gem 'devise-i18n' #deviseを日本語翻訳する。
gem 'devise-i18n-views'  #deviseのページを日本語翻訳する。
gem "refile", require: "refile/rails", github: 'manfe/refile'
gem "refile-mini_magick"
gem 'bootstrap-sass', '3.4.1' #bootstrap-sassは、LESSをSassへ変換し、必要なBootstrapファイルを現在のアプリケーションですべて利用できるようにします。
gem 'bootstrap' , '~> 5.1.3'#cssのフレームワーク
gem 'jquery-rails' #bootstrap の動きに関わるgem
gem 'active_storage_validations', '0.8.2'
gem 'font-awesome-rails'
gem 'font-awesome-sass'