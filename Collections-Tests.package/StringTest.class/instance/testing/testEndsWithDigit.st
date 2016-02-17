testEndsWithDigit

self deny: ('ιθΰτόφίδσρνα' endsWithDigit).
self assert: ('ιθΰτόφίδσρνα9' endsWithDigit).
self deny: ('99test' endsWithDigit).
self assert: ('  999' endsWithDigit).