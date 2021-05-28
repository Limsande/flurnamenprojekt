# Build:
#   docker image build -t ltm .
#
# Run:
#   docker run -ti --rm -v $(pwd):/src --network=host -v /tmp/.X11-unix -e DISPLAY ltm bash

FROM    fedora
RUN     dnf install -y npm

RUN     groupadd --gid 1000 user
RUN     useradd --uid 1000 --gid 1000 --create-home user
RUN     echo "user:" | chpasswd
RUN     usermod -aG wheel user
USER    user
