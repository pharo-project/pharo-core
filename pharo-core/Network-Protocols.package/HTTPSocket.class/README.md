HTTPSockets support HTTP requests, either directly or via an HTTP proxy server. An HTTPSocket saves the parse of the last ASCII header it saw, to avoid having to parse it repeatedly.

The real action is in httpGet:accept:.  See the examples in the class, especially httpFileInNewChangeSet: and httpShowGif:.