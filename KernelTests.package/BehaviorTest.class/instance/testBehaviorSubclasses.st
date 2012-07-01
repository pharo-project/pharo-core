tests
testBehaviorSubclasses
	"self run: #testBehaviorSubclasses"
	
	| b b2 |
	b := Behavior new.
	b superclass: OrderedCollection.
	b methodDictionary: MethodDictionary new.
	self shouldnt: [b subclasses ] raise: Error.
	self shouldnt: [b withAllSubclasses] raise: Error.
	self shouldnt: [b allSubclasses] raise: Error.
	b2 := Behavior new.
	b2 superclass: b.
	b2 methodDictionary: MethodDictionary new.
	self assert: (b subclasses includes: b2).
	self assert: (b withAllSubclasses includes: b).