private
wrapItem: anItem
	| s |
	
	s :=String streamContents: [ :aStream | 
		3 to: (cachedHierarchy at: anItem) size do: [:i | aStream << '    '].
		aStream 
			<< anItem methodClass name << ' ('.
		anItem isFromTrait
			ifTrue: [ aStream << anItem compiledMethod origin name; space ].
		aStream << (anItem category ifNil: ['']) <<')'].
	
	^ {s. anItem selector}.