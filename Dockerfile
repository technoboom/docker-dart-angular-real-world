FROM google/dart-runtime

WORKDIR /app

ADD pubspec.* /app
RUN pub get
ADD . /app
RUN pub get --offline

CMD []
ENTRYPOINT ["/usr/bin/dart", "main.dart"]
