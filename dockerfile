FROM debian:buster-slim

RUN apt update
RUN apt install -y git curl

RUN cd /root && curl -LO https://github.com/neovim/neovim/releases/download/v0.5.0/nvim-linux64.tar.gz
RUN cd /root && tar xzf nvim-linux64.tar.gz
ENV PATH /root/nvim-linux64/bin:$PATH

COPY config /root/.config/nvim
