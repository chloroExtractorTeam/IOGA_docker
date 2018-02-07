FROM ubuntu

RUN apt update && apt upgrade --yes

RUN apt install --yes \
    git

RUN apt install --yes wget python


RUN git clone https://github.com/holmrenser/IOGA.git

RUN cd IOGA/ && .setup_IOGA.py

    