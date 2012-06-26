query
hierarchyOfClassesSurrounding: aClass
	"Answer a list of classes in the hierarchy both above and below the given class"
	"SystemNavigation default hierarchyOfClassesSurrounding: StringHolder"
	
	| list aClassNonMeta isMeta |
	aClass ifNil: [^ OrderedCollection new].
	aClass ifNil: [^ self].
	aClassNonMeta := aClass theNonMetaClass.
	isMeta := aClassNonMeta ~~ aClass.
	list := OrderedCollection new.
	aClass allSuperclasses reverseDo:
		[:cl | list addLast: cl].
	aClassNonMeta allSubclassesWithLevelDo:
		[:cl :level | | theClassOrMeta |
		theClassOrMeta := isMeta ifTrue: [cl class] ifFalse: [cl].
		list addLast: theClassOrMeta]
	 	startingLevel: 0.
	^ list

