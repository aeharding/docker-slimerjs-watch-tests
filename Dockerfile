FROM cmfatih/slimerjs
MAINTAINER Alexander Harding <alexander.harding@software.dell.com>

RUN mkdir cux.css

# add your code with a link on runtime
# https://docs.docker.com/reference/run/#volume-shared-filesystems
CMD cd cux.css && casperjs test test/*.js --engine=slimerjs
