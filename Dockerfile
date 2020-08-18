FROM ubuntu:bionic

RUN apt update \
 && apt install -y git ssh-client \
 && rm -rf /var/lib/apt/lists/*


RUN apt-get update \
	&& apt-get install -y gawk wget git-core diffstat unzip texinfo gcc-multilib \
     build-essential chrpath socat libsdl1.2-dev xterm repo