testInstanceCreation
	self assert: ((self interpret: 'Array new') isKindOf: Array).
	self assert: ((self interpret: 'Array new: 10') isKindOf: Array).
	self assert: ((self interpret: 'OrderedCollection new') isKindOf: OrderedCollection).
	self assert: ((self interpret: 'Error new') isKindOf: Error).
	self assert: ((self interpret: 'MessageNotUnderstood new') isKindOf: MessageNotUnderstood)