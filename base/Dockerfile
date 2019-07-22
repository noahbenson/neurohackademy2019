# This Dockerfile constructs a docker image that contains an installation
# of the Neuropythy library plus some data useful for the demos in the
# neurohackademy2019 docker image.
#
# Example build:
#   docker build --no-cache --tag nben/neurohackademy2019-base `pwd`
#

# Start with the Ubuntu for now
FROM nben/neuropythy:latest

# Note the Maintainer.
MAINTAINER Noah C. Benson <nben@nyu.edu>

# Put this large datafile in the docker so that we don't have to worry
# about distributing it on github or somewhere else...
USER root
COPY 100610_HCP7T_ciftis.tar.gz /data/hcp/retinotopy/
RUN chmod 755 /data/hcp/retinotopy/100610_HCP7T_ciftis.tar.gz \
 && chown $NB_USER /data /data/hcp /data/hcp/retinotopy \
 && chown $NB_USER /data/hcp/retinotopy/100610_HCP7T_ciftis.tar.gz

# hack a fix into the bug in fsspec library:
RUN cd /opt/conda/lib/python3.7/site-packages/fsspec \
 && cp spec.py spec.py.bak \
 && cat spec.py.bak | sed 's/print(lpath, rpath)/#print(lpath, rpath)/' > spec.py

