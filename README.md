RailsTemplate: PG + Spork
=========================
sudo -u postgres createuser -D -P superuser

    rails generate rspec:install
    guard init rspec
    spork --bootstrap

    heroku create --stack cedar
    git push heroku master


taglib-ruby dependence
=========================
    sudo apt-get install libtag1-dev
    gem install taglib-ruby

sphinx
======
    # install ubuntu 12 x64 version
    wget http://sphinxsearch.com/files/sphinxsearch_2.0.5-release-0ubuntu11~precise2_amd64.deb
    sudo dpkg -i sphinxsearch_2.0.5-release-0ubuntu11~precise2_amd64.deb

    # disable auto start
    sudo mv /etc/init/sphinxsearch.conf /etc/init/sphinxsearch.conf.disabled
    
    # start sphinx from rake
    rake ts:index
    rake ts:rebuild