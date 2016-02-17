testEndsWithAnyOf

self deny: ('ιθΰτόφίδσρνα' endsWithAnyOf: #('ia' 'ρν' '' 'αί')).
self assert: ('ιθΰτόφίδσρνα' endsWithAnyOf: #('test' 'ΙΘΐ' 'δσρνα')).
self assert: ('test' endsWithAnyOf: #('tests' 'tester' 'testing' 't')).
