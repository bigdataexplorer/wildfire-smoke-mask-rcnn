FROM deontaljaard/mrcnn

ENV WORKPATH /tensorflow

WORKDIR $WORKPATH

COPY . $WORKPATH
