FROM ubuntu:latest
RUN apt-get update && apt-get install -y tk tcllib python wget ca-certificates firefox --no-install-recommends
RUN wget https://downloads.globus.org/globus-connect-personal/linux/stable/globusconnectpersonal-latest.tgz && \
    tar xzf globusconnectpersonal-latest.tgz && mv /globusconnectpersonal-*/ /globusconnectpersonal/
CMD ["/globusconnectpersonal/globusconnect -gui"]
