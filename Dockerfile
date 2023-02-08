FROM registry.fedoraproject.org/fedora:37 AS builder

RUN dnf -y install java-17-openjdk-devel git-core
RUN git clone https://github.com/mizdebsk/mbici-workflow.git
RUN cd ./mbici-workflow && ./build.sh



FROM registry.fedoraproject.org/fedora:37

RUN dnf -y install java-17-openjdk-headless mock git-core fakeroot
RUN dnf clean all
RUN useradd -u 18611 -G mock mbici

COPY --from=builder "/mbici-workflow/target/mbici-wf" "/mbici-wf"
COPY run.sh "/run.sh"

USER mbici
WORKDIR /home/mbic
