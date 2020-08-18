FROM ubuntu:bionic

RUN apt update \
 && apt install -y git ssh-client \
 && rm -rf /var/lib/apt/lists/*


RUN apt-get update \
	&& apt-get install -y gawk wget git-core diffstat unzip texinfo gcc-multilib \
     build-essential chrpath socat libsdl1.2-dev xterm repo locales cpio

RUN dpkg-reconfigure locales && locale-gen en_US.UTF-8 && update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8 && LANG=en_US.UTF-8
RUN groupadd -r yc && useradd --no-log-init -r -g yc yc
USER yc