FROM ubuntu:bionic

RUN apt update \
 && apt install -y git ssh-client \
 && rm -rf /var/lib/apt/lists/*


RUN apt-get update \
	&& apt-get install -y gawk wget git-core diffstat unzip texinfo gcc-multilib \
     build-essential chrpath socat libsdl1.2-dev xterm repo locales cpio

RUN dpkg-reconfigure locales && locale-gen en_US.UTF-8 && update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8 && LANG=en_US.UTF-8
ARG UNAME=yc
ARG UID=1000
ARG GID=1000
RUN groupadd -g $GID -o $UNAME
RUN useradd -m -u $UID -g $GID -o -s /bin/bash $UNAME
USER $UNAME
CMD /bin/bash