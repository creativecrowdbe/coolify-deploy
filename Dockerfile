FROM alpine
ADD deploy.sh /bin/
RUN chmod +x /bin/deploy.sh
RUN apk -Uuv add curl ca-certificates
ENTRYPOINT /bin/deploy.sh