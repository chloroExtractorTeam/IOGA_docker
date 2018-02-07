FROM ubuntu

RUN apt update && apt upgrade --yes

RUN apt install --yes \
    git \
    wget \
    python \
    python3 \
    python3-pip

RUN pip3 install -U pip
RUN pip install -U wget
RUN pip3 install -U wget


RUN git clone https://github.com/holmrenser/IOGA.git

ENV PATH "$HOME/IOGA/:$PATH"

RUN cd IOGA/ && \
    python setup_IOGA.py

    