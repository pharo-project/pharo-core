downloadCache
  repoDownloadCache ifNil: [ repoDownloadCache := Dictionary new ].
  ^ repoDownloadCache