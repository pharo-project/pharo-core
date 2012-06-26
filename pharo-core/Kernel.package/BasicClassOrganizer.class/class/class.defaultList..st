instance creation
class: aClassDescription defaultList: aSortedCollection
	| inst |
	inst := self defaultList: aSortedCollection.
	inst setSubject: aClassDescription.
	^ inst