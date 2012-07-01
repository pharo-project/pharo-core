private
privSaveImageWithCleanup

  " Do not use this method for common image saving. This method is designated for saving the image during the shrinking process in headless images."

  | report |

  (Delay forMilliseconds: 1000) wait.

  Processor yield.

 13 "a magic number (Camillo) "timesRepeat: [ Smalltalk garbageCollect ].
 
  [
    self snapshot: true andQuit: true.
  ] ifError: [:e |
    [ report := FileStream forceNewFileNamed: 'PharoDebug.log'.
    report nextPutAll: e asString; cr.
    ] ensure: [ report ifNotNil: [report close]].
  ]