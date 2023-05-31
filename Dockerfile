FROM ubuntu

RUN apt update && apt-get -y install libcap2-bin python3

WORKDIR /app

COPY very_secure_script.sh .
RUN /app/very_secure_script.sh

RUN groupadd -g 1000 app && useradd -u 1000 -g app -ms /bin/bash app
USER app