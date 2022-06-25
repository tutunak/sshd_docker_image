FROM fedora:36
RUN dnf install -y openssh-server \
    procps-ng \
    iproute && \
    dnf clean all && \
    ssh-keygen -A
ENTRYPOINT ["/usr/sbin/sshd"]
CMD ["-D"]
