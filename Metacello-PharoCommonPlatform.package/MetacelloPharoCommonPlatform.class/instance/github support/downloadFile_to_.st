downloadFile: url to: outputFileName
    "download from <url> into <outputFileName>"

    | in out err proc archive zipfile |
    in := (' -L ' , url) readStream.
    out := FileStream forceNewFileNamed: outputFileName.
    err := FileStream forceNewFileNamed: '/tmp/curl.err'.
    proc := OSProcess thisOSProcess
        forkJob: '/usr/bin/curl'
        arguments:
            {'-L'.
            url}
        environment: nil
        descriptors: (Array with: nil with: out with: err).
    proc ifNil: [ OSProcess noAccessorAvailable ].
    [ proc isRunning ] whileTrue: [ (Delay forMilliseconds: 100) wait ].
    out close.
    err close.
    archive := ZipArchive new.
    zipfile := FileDirectory on: outputFileName.
    zipfile containingDirectory readOnlyFileNamed: zipfile localName do: [ :fileStream | archive readFrom: fileStream ].
    ^ archive