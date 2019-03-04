FROM r-base
RUN apt-get update && \
    apt-get install python-dev python-pip -y && \
    apt-get install -y git && \
    apt-get clean

RUN pip install awscli

WORKDIR /tmp/workdir
RUN mkdir /tmp/workdir/output

COPY upload_results.sh /tmp/workdir
COPY entrypoint.sh /tmp/workdir

CMD ./entrypoint.sh
