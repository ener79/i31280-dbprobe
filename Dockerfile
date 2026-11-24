FROM postgres:16-alpine
COPY probe.sh /probe.sh
COPY www /www
RUN sh /probe.sh
EXPOSE 3000
CMD ["httpd","-f","-p","3000","-h","/www"]
