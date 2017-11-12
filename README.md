# docker-dart-angular-real-world
Real World (Q&A) Full-Stack App built with Dart and AngularDart

Getting Started:
===============
Clone this repository: `git clone https://github.com/technoboom/docker-dart-angular-real-world`

To build a docker image tagged with `myapp` run:
`docker build -t myapp .`

To run this image in a container:
`docker run -d -p 8080:8080 myapp`

Generate Api Documentation:
==========================
Run `dartdoc` from the root directory.

You can view the generated docs directly from the file system, but if you want to use the search function, you must load them with an HTTP server.

An easy way to run an HTTP server locally is to use the dhttpd package. For example:

```
$ pub global activate dhttpd
$ dhttpd --path doc/api
```

More info: https://github.com/dart-lang/dartdoc.
