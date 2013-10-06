testAnnouncementClassRemovedIsRaisedOnRemoveFromSystem
	"self debug: #testAnnouncementClassRemovedIsRaisedOnRemoveFromSystem"
	| notRun foo | 
	notRun := false.
	SystemAnnouncer uniqueInstance weak 
		on: ClassRemoved do: [:ann | notRun := true].
	foo := self createNewClassNamed: #FooForTest2.
	self deny: notRun.
	foo removeFromSystem.
	self assert: notRun. 