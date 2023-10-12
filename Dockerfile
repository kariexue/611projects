FROM rocker/verse
#RUN apt update && apt install -y man-db && rm -rf /var/lib/apt/lists/*
#RUN yes| unminimize
RUN R -e "install.packages(c('tidyverse', 'ggplot2'))"
WORKDIR /work
CMD ["R", "-e", "rmarkdown::render('ufo.Rmd')"]
#CMD ["/init"]