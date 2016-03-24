testIncludesSubstring

self assert: ('testing this string' includesSubstring: 'ring'). 
self assert: ('ιθΰτόφίδσρνα' includesSubstring: '').
self deny: ('ιθΰτόφίδσρνα' includesSubstring: 'a'). 
self assert: ('ιθΰτόφίδσρνα' includesSubstring: 'ίδ').
self deny: ('kjdsnlksjdf' includesSubstring: 'K'). 
