as yet unclassified
fixLayout
	"Fix the owner layout, nasty!"

	self owner ifNil: [^self].
	self owner allMorphsDo: [:m |
		(m respondsTo: #resetExtent) ifTrue: [		
			WorldState addDeferredUIMessage: 
				(MessageSend receiver: m selector: #resetExtent).
			WorldState addDeferredUIMessage: 
				(MessageSend receiver: m selector: #setScrollDeltas)].
		(m isKindOf: self class)
			ifTrue: [WorldState addDeferredUIMessage: 
				(MessageSend receiver: m selector: #adoptPaneColor)]].
	WorldState addDeferredUIMessage: 
				(MessageSend receiver: self owner selector: #changed)