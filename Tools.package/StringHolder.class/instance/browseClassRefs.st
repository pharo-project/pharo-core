*Tools-Traits
browseClassRefs

	| class |
	class := self selectedClass theNonMetaClass ifNil: [^self].
	class isTrait 
		ifTrue: [self systemNavigation browseAllUsersOfTrait: class]
		ifFalse: [self systemNavigation browseAllCallsOnClass: class]
