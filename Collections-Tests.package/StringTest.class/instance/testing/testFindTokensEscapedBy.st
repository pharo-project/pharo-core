testFindTokensEscapedBy

|s|
s := OrderedCollection withAll: #('ιθΰ' 'όφίδ' 'να').
self assert: (('ιθΰτόφίδσρνα' findTokens: #($τ $σ) escapedBy:'ρν') = s).

s := OrderedCollection withAll: #('ths,').
self assert: (('this,is' findTokens: ',' escapedBy: 'is' ) = s).

s := OrderedCollection withAll: #('this,is').
self assert: (('this , is' findTokens: ',' escapedBy: ' ') = s).

s := OrderedCollection withAll: #('ths , s').
self assert: (('this , is' findTokens: ' ' escapedBy: $i) = s).