FROM rocker/shiny:4.1.0

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    xdg-utils \
    apt-transport-https \
    ca-certificates \ 
    cargo \
    curl \
    file \
    freeglut3-dev \
    git \
    gnupg2 \
    libapparmor1 \
    libcairo2-dev \
    libclang-dev \
    libcurl4-openssl-dev \
    libedit2 \
    libgeos-dev \
    libglu1-mesa-dev \
    libjpeg-dev \
    libmagick++-dev \
    libmariadbclient-dev \
    libmariadbd-dev \ 
    libpq-dev \
    libsasl2-dev \
    libsqlite3-dev \
    libssh2-1-dev \
    libssl-dev \
    libudunits2-dev \
    libnode-dev \
    libxml2-dev \
    lsb-release \
    mesa-common-dev \
    pandoc \
    pandoc-citeproc \
    procps \
    psmisc \
    python-setuptools \
    qpdf \
    sudo \
    unixodbc \
    unixodbc-dev \
    xtail \
    wget \
    zlib1g-dev

RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - \
  && curl https://packages.microsoft.com/config/debian/10/prod.list > /etc/apt/sources.list.d/mssql-release.list

RUN apt-get update && ACCEPT_EULA=Y apt-get install -y msodbcsql17 mssql-tools
RUN echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
RUN /bin/bash -c "source ~/.bashrc"

RUN install2.r --error \
    --deps TRUE \
    tidyverse \
    devtools \
    formatR \
    remotes \
    selectr \
    caTools \
    covr \
    feather \
    glue \
    knitr \
    rmarkdown \
    shiny \
    testthat \
    odbc \
    selectr \
    RSQLite \
    ggplot2 \
    Rdpack \
    data.table \
    XML \
    xml2 \
    units \
    AMR \
    comorbidity \
    qpdf \
    odbc \
    microbenchmark \
    DiagrammeR \
    timevis \
    RPostgres   

RUN R -e "devtools::install_github('ramses-antibiotics/ramses-package', ref ='v0.4.0')"


