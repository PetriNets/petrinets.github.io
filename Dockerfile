FROM debian:9-slim
RUN apt -y update
RUN apt -y install --no-install-recommends jekyll
