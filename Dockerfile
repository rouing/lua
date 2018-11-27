FROM alpine

MAINTAINER [William C Ardoin](https://git.rouing.me/)

ENV LUA_MAJOR_VERSION 5.3
ENV LUA_MINOR_VERSION 5
ENV LUA_VERSION ${LUA_MAJOR_VERSION}.${LUA_MINOR_VERSION}

# Dependencies
RUN apk add --update make tar unzip gcc openssl-dev readline-dev curl libc-dev

RUN curl -L http://www.lua.org/ftp/lua-${LUA_VERSION}.tar.gz | tar xzf -
WORKDIR /lua-$LUA_VERSION

# build lua
RUN make linux test
RUN make install

WORKDIR /

# lua env
ENV WITH_LUA /usr/local/
ENV LUA_LIB /usr/local/lib/lua
ENV LUA_LIBDIR /usr/local/lib/lua
ENV LUA_INCLUDE /usr/local/include


RUN rm /lua-$LUA_VERSION -rf