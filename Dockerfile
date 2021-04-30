FROM ubuntu:latest

RUN apt-get update && apt-get install -y \curl \pandoc \less
CMD /bin/bash

ARG URI="http://www.google.com/"
ENV URI="${URI}"
ENTRYPOINT curl -s ${URI} | pandoc -f html -t gfm | less


## How to run this application locally:
# docker build -t task_5 .
# docker run -it -e URI="https://www.google.com/" --rm task_5