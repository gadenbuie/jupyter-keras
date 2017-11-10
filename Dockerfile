FROM jupyter/scipy-notebook

MAINTAINER gadenbuie <@gadenbuie>

USER root

# bash instead of dash to use source
RUN ln -snf /bin/bash /bin/sh

USER jovyan

# Python3, Installs bleeding edge TensorFlow and Keras 
RUN conda install -y tensorflow \
 && pip install --upgrade --no-deps git+git://github.com/fchollet/keras.git \
 && pip install jupyterthemes \
 && jt -t grade3 -fs 11 -tfs 13 -nfs 13 -cellw 88% -T -f fira -nf droidsans -tf georgiaserif
