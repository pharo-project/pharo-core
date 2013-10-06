testRemovingMethods
	| newMethod newClass |
	
	newClass:= RGFactory current createClassNamed: #OrderedCollection.
	newMethod:= (RGFactory current createMethodNamed: #add: parent: newClass)
					protocol: 'adding';
					sourceCode: 'add: newObject
									^self addLast: newObject'.
	self assert: (newClass hasMethods not).

	newClass addMethod: newMethod.
	newClass addSelector: #size 
			   classified: 'accessing' 
			   sourced: 'size
							^ lastIndex - firstIndex + 1'.
	
	self assert: (newClass selectors = #(add: size)).
	newClass removeSelector: #join:.
	self assert: (newClass selectors = #(add: size)).
	newClass removeMethod: newMethod.
	self assert: ((newClass includesSelector: #add:) not).
	newClass removeSelector: #size.
	self assert: (newClass hasMethods not).