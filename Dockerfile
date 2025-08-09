FROM jenkins/jenkins:2.522-jdk21

USER root

# Install Docker CLI dependencies
RUN apt-get update && apt-get install -y lsb-release python3-pip curl

# Install Docker CLI
RUN curl -fsSLo /usr/share/keyrings/docker-archive-keyring.asc \
      https://download.docker.com/linux/debian/gpg
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.asc] \
      https://download.docker.com/linux/debian $(lsb_release -cs) stable" \
      > /etc/apt/sources.list.d/docker.list
RUN apt-get update && apt-get install -y docker-ce-cli

USER jenkins

# Install Blue Ocean 1.27.21 and Docker Workflow
RUN jenkins-plugin-cli --plugins \
      blueocean:1.27.21 \
      docker-workflow

