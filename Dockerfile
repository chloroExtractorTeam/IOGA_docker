FROM ubuntu

RUN apt update && apt upgrade --yes

RUN apt install --yes \
    git \
    wget \
    python \
    python3 \
    python3-pip \
    python3-venv \

RUN pip3 install -U pip
RUN pip install -U wget


RUN git clone https://github.com/holmrenser/IOGA.git

ENV PATH "$HOME/IOGA/:$PATH"

RUN cd IOGA/ && \
    python2 setup_IOGA.py

    