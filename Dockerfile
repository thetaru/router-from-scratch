FROM gcc
RUN apt-get update && apt-get -y install --no-install-recommends gdb iputils-ping
