FROM hseeberger/scala-sbt

# https://docs.docker.com/install/linux/docker-ce/debian/#install-docker-ce

RUN apt-get update -yqq && apt-get install -yqq apt-transport-https ca-certificates curl gnupg2 software-properties-common

RUN curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | apt-key add -

RUN add-apt-repository "deb [arch=$(dpkg --print-architecture)] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") $(lsb_release -cs) stable"

RUN apt-get update -yqq && apt-get install -yqq docker-ce

# docker build -t htch/scala-sbt-docker:latest .
# docker push htch/scala-sbt-docker:latest