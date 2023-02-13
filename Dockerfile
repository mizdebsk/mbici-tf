FROM registry.fedoraproject.org/fedora:37 AS builder

RUN dnf -y install java-17-openjdk-devel git-core && dnf clean all
RUN git clone https://github.com/mizdebsk/mbici-workflow.git
RUN cd ./mbici-workflow && ./build.sh



FROM registry.fedoraproject.org/fedora:37

RUN dnf -y install java-17-openjdk-headless mock git-core && dnf clean all
RUN useradd -u 18611 -G mock mbici

COPY --from=builder "/mbici-workflow/target/mbici-wf" "/mbici-wf"

USER mbici
WORKDIR /home/mbici
