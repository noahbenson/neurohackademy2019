# This Dockerfile constructs a docker image that is ready for use in the 2019
# Neurohackademy course.
#
# Example build:
#   docker build --no-cache --tag nben/neurohackademy2019 `pwd`
#
#   (but really, use docker-compose up instead).
#

# We are starting from the nben/neuropythy docker
FROM nben/neuropythy:latest

# Note the Maintainer.
MAINTAINER Noah C. Benson <nben@nyu.edu>

# The neuropythy docker is built on the jupyter/scipy docker image; in that
# docker, notebooks are run as the user "jovyan", saved as NB_USER:
USER $NB_USER

# Install some stuff (popeye)...
RUN git clone https://github.com/noahbenson/popeye \
 && cd popeye \
 && pip install sharedmem cython statsmodels \
 && python setup.py install

# All else can be left as is.

