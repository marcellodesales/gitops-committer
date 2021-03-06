FROM alpine/git

WORKDIR /gitops
COPY banner.txt /gitops/banner.txt
COPY entrypoint.sh /gitops/entrypoint.sh

# The volume to mount the workspace (git repo that needs to be modified)
VOLUME /gitops/workspace

# The volume with the results of the changes
VOLUME /gitops/results

ENTRYPOINT ["/gitops/entrypoint.sh"]
