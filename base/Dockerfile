# This Dockerfile constructs a docker image that contains an installation
# of the Neuropythy library plus some data useful for the demos in the
# neurohackademy2019 docker image.
#
# Example build:
#   docker build --no-cache --tag nben/neurohackademy2019-base `pwd`
#

# Start with the Ubuntu for now
FROM nben/neuropythy

# Note the Maintainer.
MAINTAINER Noah C. Benson <nben@nyu.edu>


USER root
COPY 100610_HCP7T_ciftis.tar.gz /data/hcp/retinotopy/
RUN chmod 755 /data/hcp/retinotopy/100610_HCP7T_ciftis.tar.gz \
 && chown jovyan /data /data/hcp /data/hcp/retinotopy \
 && chown jovyan /data/hcp/retinotopy/100610_HCP7T_ciftis.tar.gz

USER $NB_USER
RUN cd /data/hcp/retinotopy \
 && tar zxf ./100610_HCP7T_ciftis.tar.gz && rm ./100610_HCP7T_ciftis.tar.gz \
 && cd 100610 \
 && for fl in `find . -name '*.dtseries.nii'`; do mv $fl .; done

