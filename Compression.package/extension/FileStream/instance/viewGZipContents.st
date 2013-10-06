viewGZipContents
       "View the contents of a gzipped file"

       | stringContents |
       self binary.
       stringContents := self contentsOfEntireFile.
       stringContents := Cursor wait showWhile: [(GZipReadStream on: stringContents) upToEnd].
       stringContents := stringContents asString withSqueakLineEndings.

       UIManager default
               edit: stringContents
               label: 'Decompressed contents of: ', self localName