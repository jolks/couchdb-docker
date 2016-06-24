FROM ubuntu:14.04

EXPOSE 5984

# http://askubuntu.com/questions/640288/how-to-install-latest-couchdb-on-ubuntu
RUN apt-get update -y
RUN apt-get remove couchdb couchdb-bin couchdb-common -f
RUN apt-get install python-software-properties software-properties-common -y
RUN apt-add-repository ppa:couchdb/stable
RUN apt-get update -y
RUN apt-get install couchdb couchdb-bin couchdb-common -y
RUN mkdir -p /var/run/couchdb

# Custom settings
ADD custom.ini /etc/couchdb/local.d

# Start CouchDB
CMD couchdb
