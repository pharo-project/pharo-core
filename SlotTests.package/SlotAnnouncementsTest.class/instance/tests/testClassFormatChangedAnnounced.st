testClassFormatChangedAnnounced
	| classAdded classModified |
	SystemAnnouncer uniqueInstance weak on: ClassModifiedClassDefinition send: #saveAnnouncementOnce: to: self.
	
	"We create a new class without slots"
	classAdded := self makeWithLayout: PointerLayout.
	
	"now we extend it with slots.  The class definition should've changed"
	classModified := self makeWithLayout: WeakLayout.
	
	self assert: announcement newClassDefinition equals: classModified.
	self assert: announcement oldClassDefinition format equals: classAdded format.
	self assert: announcement newClassDefinition format equals: classModified format.