# Use Ubuntu Xenial Xerus
FROM ubuntu:xenial
MAINTAINER SoerenHenning

#RUN apt-get -y update && apt-get -y upgrade && apt-get -y dist-upgrade

#RUN apt-get -y install apt-transport-https
RUN echo 'deb http://cran.r-project.org/bin/linux/ubuntu xenial/' >> /etc/apt/sources.list.d/cran.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
RUN apt-get update && apt-get install -y r-base

# Log R version
RUN R --version

# Start Rserve
ADD start.R start.R
ADD Rserv.conf /Rserv.conf
EXPOSE 6311
CMD Rscript start.R

#ADD run.sh /
#RUN chmod +x /run.sh
#EXPOSE 6311
#ENV R_HOME /usr/lib/R
#CMD /run.sh
