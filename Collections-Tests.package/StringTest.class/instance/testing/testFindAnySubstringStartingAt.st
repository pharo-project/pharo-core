testFindAnySubstringStartingAt

self assert: ('tester12345' findAnySubstring: #('st' $1) startingAt: 1) = 3.
self assert: ('ιθΰτόφίδσρνα1234' findAnySubstring: #('st' '' 'σρ' '123') startingAt:  1) = 9.
self assert: ('ιθΰτόφίδσρνα' findAnySubstring: #('') startingAt:  2) = 13.
self assert: ('ιθΰτόφίδσρνα' findAnySubstring: #('σρ') startingAt:  3) = 9.
self assert: ('ιθΰτόφίδσρνα' findAnySubstring: #() startingAt:  3) = 13.
self assert: ('test12345' findAnySubstring: #('"' '@') startingAt: 12) = 10.