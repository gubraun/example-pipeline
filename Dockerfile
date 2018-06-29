FROM ubuntu
RUN apt-get update && apt-get install -y \
    arduino-core \
	build-essential \
	cmake \
	git \
	ruby-dev \
	libboost-dev \
	rustc \
	cargo \
	clang \
	libclang-dev \
&& rm -rf /var/lib/apt/lists/* \
&& gem install cucumber -v 2.0.0

