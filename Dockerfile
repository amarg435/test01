FROM alpine:latest
ADD HelloWorld.class HelloWorld.class
RUN apk --update add openjdk8-jre	
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "HelloWorld"]
RUN echo 'touch /tmp/file &' >> /scripts/init.sh
RUN echo 'tail -F /dev/null' >> /scripts/init.sh
CMD sh -c "sh /scripts/init.sh"
