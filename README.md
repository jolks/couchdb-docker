#### To build latest stable CouchDB image for Docker

The `custom.ini` file contains custom configurations for CouchDB.

```sh
# To build the image
$ docker build -t couchdb:myversion .

# After building it, run the image as container
$ docker run -p 5984:5984 couchdb:myversion
```
