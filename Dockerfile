FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.4.1

RUN gem install dynamo-autoscale --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["dynamo-autoscale"]
CMD ["--help"]
