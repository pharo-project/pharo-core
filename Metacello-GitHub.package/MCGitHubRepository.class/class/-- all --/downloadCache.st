downloadCache
    DownloadCache ifNil: [ DownloadCache := Dictionary new ].
    ^ DownloadCache