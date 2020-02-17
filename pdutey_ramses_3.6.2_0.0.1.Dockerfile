FROM rocker/r-ver:3.6.2

RUN apt-get update \
  && apt-get install 
  
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    file \
    git \
    libapparmor1 \
    libclang-dev \
    libcurl4-openssl-dev \
    libedit2 \
    libssl-dev \
    lsb-release \
    multiarch-support \
    psmisc \
    procps \
    python-setuptools \
    sudo \
    wget \
    libxml2-dev \
    zlib1g-dev \
    libcairo2-dev \
    libsqlite-dev \
    libmariadbd-dev \
    libmariadbclient-dev \
    libpq-dev \
    libssh2-1-dev \
    libudunits2-dev \
    unixodbc-dev \
    libsasl2-dev \
    msodbcsql17 \
    msodbcsql \
  && install2.r --error \
    --deps TRUE \
    tidyverse \
    dplyr \
    devtools \
    formatR \
    remotes \
    selectr \
    caTools \
    BiocManager \
    covr \
    feather \
    glue \
    knitr \
    rmarkdown \
    testthat \
    odbc \
    RSQLite \
    ggplot2 \
    Rdpack \
    data.table \
    XML \
    xml2 \
    units \
    AMR