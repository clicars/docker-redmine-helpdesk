FROM redmine:3.4.2


RUN git clone https://github.com/jfqd/redmine_helpdesk /usr/src/redmine/plugins/redmine_helpdesk && \
    cd /usr/src/redmine/plugins/redmine_helpdesk && \
    git checkout tags/v3.1 && \
    cd /usr/src/redmine/ && \
    bundle install --without development test rmagick

ADD docker-entrypoint.sh /docker-entrypoint.sh
