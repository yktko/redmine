#!/bin/sh
apt-get update -y 
apt-get install -y  supervisor logrotate nginx mysql-client postgresql-client imagemagick subversion git cvs bzr mercurial darcs rsync ruby2.3 locales openssh-client gcc g++ make patch pkg-config gettext-base ruby2.3-dev libc6-dev zlib1g-dev libxml2-dev 
apt-get install -y  libmysqlclient20 libpq5 libyaml-0-2 libcurl3 libssl1.0.0 uuid-dev xz-utils 
apt-get install -y  libxslt1.1 libffi6 zlib1g gsfonts 
apt-get install -y  libsqlite3-dev libmysqlclient-dev 
update-locale LANG=C.UTF-8 LC_MESSAGES=POSIX
echo "gem: --no-rdoc --no-ri" >> /.gemrc
gem install --no-rdoc --no-ri bundler rake
bundle install --without rmagick
