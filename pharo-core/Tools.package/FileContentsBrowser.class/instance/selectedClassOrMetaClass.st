metaclass
selectedClassOrMetaClass
	"Answer the selected class or metaclass."

	| cls |
	self metaClassIndicated
		ifTrue: [^ (cls := self selectedClass) ifNotNil: [cls metaClass]]
		ifFalse: [^ self selectedClass]