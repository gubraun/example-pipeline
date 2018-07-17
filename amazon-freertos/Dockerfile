FROM ubuntu
RUN apt-get update && apt-get install -y \
    git \
    wget \
    make \
    libncurses-dev \
    flex \
    bison \
    gperf \
    python \
    python-serial \
 && rm -rf /var/lib/apt/lists/*

ADD xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0.tar.gz /opt
ENV PATH /opt/xtensa-esp32-elf/bin:$PATH

ADD cov-analysis-linux64-2018.06.tar.gz /opt
RUN cd /opt/cov-analysis-linux64-2018.06 \
 && rm -rf jre jre7 architecture-analysis sdk dynamic-analysis forcheck doc
ENV PATH /opt/cov-analysis-linux64-2018.06/bin:$PATH


#RUN mkdir opt \
#&& cd /opt \
#&& wget https://dl.espressif.com/dl/xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0.tar.gz \
#&& tar -xzf xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0.tar.gz
#&& rm -f xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0.tar.gz

