testClassModifiedAnnounced
	| classAdded classModified |
	SystemAnnouncer uniqueInstance weak on: ClassModifiedClassDefinition send: #saveAnnouncementOnce: to: self.
	
	"We create a new class without slots"
	classAdded := self makeWithLayout: PointerLayout.
	
	"now we extend it with slots.  The class definition should've changed"
	classModified := self makeWithLayout: PointerLayout andSlots: { #aSlot }.
	
	self assert: announcement newClassDefinition equals: classModified.
	self assert: announcement oldClassDefinition allInstVarNames equals: classAdded allInstVarNames.