testCopyReplaceAllWithAsTokens

self assert: ('test te str' copyReplaceAll: 'te' with: 'longone' asTokens: true) = 'test longone str'.
self assert: ('test te str' copyReplaceAll: 'te' with: 'longone' asTokens: false) = 'longonest longone str'.
self assert: ('123 test xyz' copyReplaceAll: 'st' with: 'mper' asTokens: true) = '123 test xyz'.
self assert: ('יטאפüצ‗הףסםב' copyReplaceAll: 'אפüצ' with: 'A' asTokens: false) = 'יטA‗הףסםב'.
self assert: ('יטאפü יטאפüt יטאפü' copyReplaceAll: ' ' with:  '‗' asTokens: false) = 'יטאפü‗יטאפüt‗יטאפü'.