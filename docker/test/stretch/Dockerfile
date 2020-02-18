FROM debian:stretch-slim

ARG APT_HTTP_PROXY

ENV DEBIAN_FRONTEND noninteractive
ENV LC_ALL C.UTF-8

COPY stretch.debconf /root
RUN debconf-set-selections /root/stretch.debconf

COPY setup-apt-conf.sh /root
RUN /root/setup-apt-conf.sh $APT_HTTP_PROXY

ENV LAST_UPDATED 2020-02-22-001
RUN apt-get update
RUN apt-get install -y apt-utils libfile-fcntllock-perl locales

RUN echo "en_GB.UTF-8	UTF-8" >> /etc/locale.gen
RUN dpkg-reconfigure locales && locale-gen && \
    /usr/sbin/update-locale LANG=en_GB.UTF-8

ENV DEBIAN_FRONTEND teletype

RUN apt-get install -y --no-install-recommends \
    apache2 \
    ca-certificates \
    gcc \
    libc6-dev \    
    libapache2-mod-perl2 \
    libcgi-pm-perl \
    libcrypt-openssl-rsa-perl \
    libdbd-pg-perl \
    libdbix-dbschema-perl \
    libdigest-bcrypt-perl \
    libdigest-hmac-perl \
    libfile-which-perl \
    libjson-any-perl \
    liblist-moreutils-perl \
    libmoosex-types-json-perl \
    libmoosex-types-loadableclass-perl \
    libmoosex-types-path-class-perl \
    libnet-dns-perl \
    libnet-ip-perl \
    libnet-netmask-perl \
    libssl-dev \
    libtext-csv-perl \
    make \
    wget

RUN apt-get clean

RUN useradd --gid 100 --create-home sauron
USER sauron

ENV SAURON_HOME=/home/sauron \
    SAURON_VERSION=v0.7.4

WORKDIR /home/sauron
COPY --chown=sauron:users Sauron-${SAURON_VERSION}.tar.gz /home/sauron
RUN tar xf ${HOME}/Sauron-${SAURON_VERSION}.tar.gz

COPY --chown=sauron:users MyConfig.pm ${SAURON_HOME}/.local/share/.cpan/CPAN/MyConfig.pm

WORKDIR ${SAURON_HOME}/Sauron-${SAURON_VERSION}

ENV PATH="/home/sauron/perl5/bin${PATH:+:${PATH}}" \
    PERL5LIB="/home/sauron/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}" \
    PERL_LOCAL_LIB_ROOT="/home/sauron/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}" \
    PERL_MB_OPT="--install_base \"/home/sauron/perl5\"" \
    PERL_MM_OPT="INSTALL_BASE=/home/sauron/perl5"

RUN cpan .
