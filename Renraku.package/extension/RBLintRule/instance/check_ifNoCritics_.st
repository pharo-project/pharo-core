check: anEntity ifNoCritics: alternativeBlock
	| critics |
	
	critics := OrderedCollection new.
	self check: anEntity forCriticsDo: [ :critic | critics add: critic ] ifNone: alternativeBlock.
	^ critics