testFindStringStartingAt

self assert: ('ιθΰτόφίδσρνα' findString: 'ΙΘ' startingAt: 1) = 0.
self assert: ('ιθΰτόφίδσρνα' findString: 'ιθ' startingAt: 10) = 0.
self assert: ('ιθΰτόφίδσρνα' findString: 'ί' startingAt: 5) = 7.
self assert: ('salkjsdlkgfee' findString: 'lke' startingAt: 1) = 0.
self assert: ('salkjsdlkgfee' findString: 'ee'startingAt: 3) = 12.
self assert: (' ' findString: '' startingAt: 1) = 0.