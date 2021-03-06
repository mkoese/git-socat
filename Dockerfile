FROM quay.io/mikailkose/git:latest 

RUN apk fix
RUN apk --update add socat nmap-ncat && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

VOLUME /git
WORKDIR /git

ENTRYPOINT ["git"]
CMD ["--help"]
