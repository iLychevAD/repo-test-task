FROM nginx
RUN rm -rf /etc/nginx/conf.d/default.conf
COPY repo.conf /etc/nginx/conf.d/
RUN mkdir -p /repo
COPY files/ /repo/
RUN apt update && apt install -y -q reprepro && \
    apt clean all && rm -rf /var/cache/apt
ARG CODENAMES="bionic trusty"
RUN for DIST in ${CODENAMES}; \
    do \
      for DEB in `ls -1 repo/*.deb`; \
      do \
      echo ${DEB}; \
      reprepro -b repo/ includedeb ${DIST} ${DEB}; \
      done; \
    done

EXPOSE "80"
