testIncludesSubstring

self assert: ('testing this string' includesSubstring: 'ring'). 
self assert: ('������������' includesSubstring: '').
self deny: ('������������' includesSubstring: 'a'). 
self assert: ('������������' includesSubstring: '��').
self deny: ('kjdsnlksjdf' includesSubstring: 'K'). 
