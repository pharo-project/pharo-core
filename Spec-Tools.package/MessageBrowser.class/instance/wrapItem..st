private
wrapItem: anItem
	| s |
	
	s :=String streamContents: [:t | 
		3 to: (cachedHierarchy at: anItem) size do: [:i | t << '    '].
		t << anItem methodClass name<< ' ('<< (anItem category ifNil: ['']) <<')'].
	
	^ {s. anItem selector}.