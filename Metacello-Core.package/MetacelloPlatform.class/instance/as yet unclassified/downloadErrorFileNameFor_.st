downloadErrorFileNameFor: zipFileName
  ^ '/tmp/curl-' , (zipFileName select: [ :c | c isAlphaNumeric ]) , '.err'