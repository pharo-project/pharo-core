testCaseSensitiveLessOrEqual

self assert: ('EEA' caseSensitiveLessOrEqual: 'fgh').
self deny: ('ιθΰτόφίδσρνα' caseSensitiveLessOrEqual: 'ιθΰτόφί'). 
self assert: ('ιθΰτόφίδσρνα' caseSensitiveLessOrEqual: 'ιθΰτόφίδσρνα').
self assert: ('ΙΘΐΤάΦ' caseSensitiveLessOrEqual: 'θΰτόφ').
self assert: ('eea' caseSensitiveLessOrEqual: 'ΙΘΐ').