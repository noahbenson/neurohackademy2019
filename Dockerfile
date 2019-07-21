# This Dockerfile constructs a docker image that is ready for use in the 2019
# Neurohackademy course.
#
# Example build:
#   docker build --no-cache --tag nben/neurohackademy2019 `pwd`
#
#   (but really, use docker-compose up instead).
#

# We are starting from the nben/neuropythy docker; however because we also need
# a bit of data, I went ahead and added those data to the neuropythy docker
# then saved that docker as neurohackademy2019-base on dockerhub. You can view
# the dockerfile used to create that docker image in the base/ directory.
FROM nben/neurohackademy2019-base:latest

# Note the Maintainer.
MAINTAINER Noah C. Benson <nben@nyu.edu>

# The neuropythy docker is built on the jupyter/scipy docker image; in that
# docker, notebooks are run as the user "jovyan":
USER jovyan

# Download some stuff from the OSF...
RUN mkdir -p /data/hcp/retinotopy \
 && cd /data/hcp/retinotopy \
 && curl -L -o ./apertures.zip https://osf.io/5sj3m/download \
 && unzip apertures.zip

# Install some stuff (popeye)...
RUN git clone https://github.com/noahbenson/popeye \
 && cd popeye \
 && pip install sharedmem cython statsmodels \
 && python setup.py install

# All else can be left as is.

