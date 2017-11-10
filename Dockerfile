FROM ubuntu:rolling as lepinkainen-dev

RUN apt-get update && apt-get install -y locales  \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8

RUN apt-get install -y git build-essential python3 golang-go

#RUN rm -rf /var/lib/apt/lists/*