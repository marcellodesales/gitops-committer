FROM alpine/git

WORKDIR /gitops
COPY banner.txt /gitops/banner.txt
COPY entrypoint.sh /gitops/entrypoint.sh

VOLUME /results
ENTRYPOINT ["/gitops/entrypoint.sh"]
