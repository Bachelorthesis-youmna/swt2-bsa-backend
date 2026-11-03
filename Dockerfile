# Build environment only; sources and reports are mounted at runtime.
FROM maven:3.9.9-eclipse-temurin-17
ENV MAVEN_OPTS="--add-opens java.base/java.lang=ALL-UNNAMED"
WORKDIR /workspace/bogenliga
CMD ["mvn", "-B", "clean", "verify"]
