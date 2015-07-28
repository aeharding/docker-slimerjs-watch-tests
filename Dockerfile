# FROM cmfatih/phantomjs
FROM cmfatih/slimerjs
MAINTAINER Alexander Harding <alexander.harding@software.dell.com>

RUN apt-get install -y inotify-tools

RUN mkdir cux.css

COPY ./inotifyrun /bin/

# add your code with a link on runtime
# https://docs.docker.com/reference/run/#volume-shared-filesystems

CMD cd cux.css && inotifyrun casperjs test test/*.js --engine=slimerjs