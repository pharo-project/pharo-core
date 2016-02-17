testFindString

self assert: ('ιθΰτόφίδσρνα' findString: 'ΙΘ') = 0.
self assert: ('ιθΰτόφίδσρνα' findString: 'ιθ') = 1.
self assert: ('salkjsdlkgfee' findString: 'EE') = 0.
self assert: ('salkjsdlkgfee' findString: 'ee') = 12.
self assert: (' ' findString: '') = 0.