testCaseInsensitiveLessOrEqual

self assert: ('EEA' caseInsensitiveLessOrEqual: 'fgh').
self deny: ('ιθΰτόφίδσρνα' caseInsensitiveLessOrEqual: 'ιθΰτόφί').
self assert: ('ιθΰτόφίδσρνα' caseInsensitiveLessOrEqual: 'ιθΰτόφίδσρνα').
self deny: ('ΙΘΐΤάΦ' caseInsensitiveLessOrEqual: 'θΰτόφ').
self assert: ('eea' caseInsensitiveLessOrEqual: 'ΙΘΐ').