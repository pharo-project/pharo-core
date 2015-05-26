flushCache
    "the directory acts like a cache since we download the directory from github"

    super flushCache.
    self class flushDownloadCache.
    directory := nil