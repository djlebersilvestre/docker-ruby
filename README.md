# docker-ruby
Base Dockerfile for Ruby apps. Built upon Debian Wheezy image.
Recommended for building webapps based on ruby.

### To build the new image (from the same directory of this Dockerfile)
```
sudo docker build -t djlebersilvestre/ruby:version .
```

### To build the new image (from git, without Dockerfile)
```
sudo docker build -t djlebersilvestre/ruby:version https://github.com/djlebersilvestre/docker-ruby.git
```

### To run the image and access its file system
```
sudo docker run -t -i djlebersilvestre/ruby:version /bin/bash
```

### To build a new Dockerfile upon this image (use the public image \o/)
```
FROM djlebersilvestre/ruby:version
# customize your image
```
