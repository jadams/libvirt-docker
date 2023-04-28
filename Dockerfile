FROM fedora:38
RUN dnf install -y \
    dbus-daemon \
    virt-manager \
 && dnf clean all
ENV GDK_BACKEND=broadway \
    NO_AT_BRIDGE=1
EXPOSE 8080
ENTRYPOINT [ "/usr/bin/bash", "-c", "/usr/bin/broadwayd & while true; do /usr/bin/dbus-run-session -- /usr/bin/virt-manager --no-fork; done" ]
