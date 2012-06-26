path access
driveName

   "return a possible drive letter and colon at the start of a Path name, empty string otherwise"

   | firstTwoChars |

   ( pathName asSqueakPathName size >= 2 ) ifTrue: [
      firstTwoChars := (pathName asSqueakPathName copyFrom: 1 to: 2).
      (self class isDrive: firstTwoChars) ifTrue: [^firstTwoChars]
   ].
   ^''