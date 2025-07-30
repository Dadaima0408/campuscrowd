source "https://rubygems.org"

ruby '3.2.2' # ← 네가 사용하는 Ruby 버전에 맞춰 설정 (예: 3.2.2)

gem "rails", "~> 8.0.2"
gem "puma", ">= 5.0"
gem "propshaft"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "cssbundling-rails"
gem "jbuilder"
gem "solid_cache"
gem "bootsnap", require: false
gem "kamal", require: false
gem "thruster", require: false
gem "tzinfo-data", platforms: %i[windows jruby]

gem "chartkick", "~> 5.2"
gem "groupdate", "~> 6.7"

# ✅ Heroku용 PostgreSQL
group :production do
  gem "pg"
end

# ✅ 로컬 개발용 sqlite3 + 디버깅 도구들
group :development, :test do
  gem "sqlite3", "~> 1.4"
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"
gem "debug", group: [:development, :test]
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end