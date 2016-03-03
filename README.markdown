Reclip.It
=========

Homebrew for Mac
----------------

Install latest XCode via App Store

    /usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/gist/323731)"

Database
--------

    brew install mysql

And then follow on-screen instructions
Might need to run mysql_secure_installation to update root password

    brew install redis
    redis-server /usr/local/etc/redis.conf

Git
---

    brew install git

Ruby
----

    [RVM](http://beginrescueend.com/rvm/install/)

    rvm install 1.9.3
    rvm use 1.9.3 --default

Pow / Powder
---

    gem install powder
    # Make sure we are running node 0.4.x
    powder install
    <cd to project> powder link
    powder open


Initial Setup
-------------
    brew install imagemagick
    brew install imagemagick --disable-openmp #for lion

    git clone git@github.com:citypockets/reclip_it.git
    cd reclip_it
    # agree to trust .rvmrc file

    gem install bundler
    bundle

    cp config/database.yml.example config/database.yml

    rake db:create
    rake db:schema:load
    rake db:seed

    rake db:test:load

    # To warmup redis cache
    rake redis_populate:migrate

    # Start Search Server and reindex
    rake sunspot:solr:start # For development
    rake sunspot:reindex

    # Categorize Deals
    rake classify:update_keywords_only # This is optional
    rake classify:update

Startup
-------

    foreman start

Search Server
-------------

    rake sunspot:solr:start # For development
    rake sunspot:reindex # Reindex existing db rows

Profiling
-------

    brew install gd
    brew install graphviz
    brew install ghostscript

    # append to end of url
    ?profile=true

Testing
-------

    # RSpec & Cucumber
    rake

    # Individually
    rake spec
    cucumber

    # JavaScript
    rake jasmine

Guard and Spork
-------
    # For OSX 10.6 download growl notify 1.2.2
    rvmsudo bundle exec guard


Server Startup
-------

    # Commands to run after reboot
    sudo nginx
    bundle exec unicorn_rails -c config/unicorn.rb -D
    rake redis:start
    resque-pool --daemon #{shared_path}/pids/resque-pool.pid


Testing Facebook Timeline
-------
    gem install proxylocal
    start rails s
    proxylocal 3000 --host reclipit


NOTES
=====

Ruby 1.9.3 and ruby-debug
-------------------------

Unofficial release of ruby-debug that works well with Ruby 1.9.3. The only problem is you have to manually install. Just copy/paste:

    brew install wget
    wget http://rubyforge.org/frs/download.php/74596/ruby_core_source-0.1.5.gem
    wget http://rubyforge.org/frs/download.php/75414/linecache19-0.5.13.gem
    wget http://rubyforge.org/frs/download.php/75415/ruby-debug-base19-0.11.26.gem

    gem install archive-tar-minitar

    export RVM_SRC=$HOME/.rvm/rubies/ruby-1.9.3-p0/include/ruby-1.9.1
    gem install ruby_core_source-0.1.5.gem -- --with-ruby-include=/$RVM_SRC

    export RVM_SRC=$HOME/.rvm/rubies/ruby-1.9.3-p0/include/ruby-1.9.1/ruby-1.9.3-p0
    gem install linecache19-0.5.13.gem -- --with-ruby-include=/$RVM_SRC
    gem install ruby-debug-base19-0.11.26.gem -- --with-ruby-include=/$RVM_SRC

    rm *.gem

Benchmark
---------

    time script/rails runner "puts 1"
    real  0m4.105s
    user  0m3.282s
    sys   0m0.653s

    @ruby-1.9.3-p0@rails31 1/26/2011
    real	0m16.850s
    user	0m14.835s
    sys	0m1.782s


Open gems
---------

    bundle open jquery-rails
