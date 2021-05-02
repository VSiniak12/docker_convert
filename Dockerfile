FROM ubuntu:latest

RUN apt-get update && apt-get install -y \curl \pandoc \less
CMD /bin/bash

ARG URI="http://www.google.com/"
ENV URI="${URI}"
ENTRYPOINT curl -s ${URI} | pandoc -f html -t gfm | less
