RailsTemplate: PG + Spork
=========================
sudo -u postgres createuser -D -P superuser

rails generate rspec:install
guard init rspec
spork --bootstrap

heroku create --stack cedar
git push heroku master