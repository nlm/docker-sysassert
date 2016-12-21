FROM ubuntu:latest
MAINTAINER Nicolas Limage <github@xephon.org>

RUN apt-get -qq update && apt-get -y upgrade
RUN apt-get -y install python3 \
                       python3-pip \
                       git \
                       upx-ucl \
                       dmidecode \
                       pciutils \
                       usbutils \
                       util-linux

RUN git clone https://github.com/nlm/sysassert.git /opt/sysassert
WORKDIR /opt/sysassert
RUN pip3 install . pyinstaller==3.1.1
COPY sysassert.spec .
COPY sysassert bin/sysassert
RUN pyinstaller sysassert.spec
RUN ln dist/sysassert dist/sysassert-$(uname -s)-$(uname -m)
ADD README.md /
CMD cat /README.md
