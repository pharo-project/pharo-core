testFindTokensIncludes

self assert: (('test this' findTokens: 't' includes: 'his') = 'his').
self assert: (('test this' findTokens: 's' includes: 'HI') isNil).
self assert: (('test this' findTokens: 's' includes: 'hi') = 't thi').
self assert: (('test that' findTokens: 't' includes: 'that') isNil).
self assert: (('ιθΰτόφίδσρνα' findTokens: #($τ $σ) includes:'ρν') = 'ρνα').
