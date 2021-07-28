FROM debian
RUN apt update && apt install -y ca-certificates lynx
COPY lynx.lss lynx.cfg /etc/lynx/
ENTRYPOINT ["lynx","--useragent=\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.79 Safari/537.1 Lynx\""]

# The hard way:
#
# FROM conanio/gcc10 AS base
# RUN curl -LO \
#   'https://invisible-mirror.net/archives/lynx/tarballs/lynx2.8.9rel.1.tar.gz' && \
#    tar zxvf lynx2.8.9rel.1.tar.gz
# WORKDIR lynx2.8.9rel.1
# RUN ./configure && make && ldd lynx
# CMD ["bash"]
# FROM debian
# COPY --from=base \
#   /lib/x86_64-linux-gnu/libncurses.so.6 \
#   /lib/x86_64-linux-gnu/libtinfo.so.6 \
#   /lib/x86_64-linux-gnu/libc.so.6 \
#   /lib/x86_64-linux-gnu/libdl.so.2 \
#   /lib/x86_64-linux-gnu/
# COPY --from=base /lib64/ld-linux-x86-64.so.2 /lib64/
# COPY --from=base /home/conan/lynx2.8.9rel.1/lynx /usr/bin/
# COPY lynx.lss lynx.cfg /usr/local/etc/
# CMD ["lynx"]

# FROM debian as base
# ...
