FROM python:3.9-slim-bullseye

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV PATH="/home/orange/.local/bin:$PATH"

RUN apt-get update && \
    apt-get install -y --no-install-recommends python3-pyqt5 && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /home/orange && \
    groupadd orange && \
    useradd -g orange orange && \
    chown -R orange:orange "/home/orange"

WORKDIR "/home/orange"
USER orange

RUN python3 -m pip install --no-cache-dir PyQt5 PyQtWebEngine orange3



COPY podman/entrypoint.sh /usr/bin/entrypoint.sh

ENTRYPOINT [ "entrypoint.sh" ]
# CMD [ "python3", "-m", "Orange.canvas" ]
CMD [ "orange-canvas" ]
