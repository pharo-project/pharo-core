testIncludesSubstringCaseSensitive

self deny: ('test this string' includesSubstring: 'Ring' caseSensitive: true ). 
self assert: ('test this string' includesSubstring: 'Ring' caseSensitive: false). 
self deny: ('123יאפüצß' includesSubstring: '' caseSensitive: false). 
self assert: ('123יאפüצß' includesSubstring: 'צß' caseSensitive: true).
self assert: ('123יאפüצß' includesSubstring: 'ְװ' caseSensitive: false).

