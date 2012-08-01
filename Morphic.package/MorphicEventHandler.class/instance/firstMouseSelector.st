access
firstMouseSelector
	"Answer the selector corresponding to the first mouse-handling selector fielded.  Created in support of providing balloon-help for halo handles, triggered by the selector handled"
	self flag: #hack. "this has to be changed probably, nobody should depend on the first selector"
	subscriptions keysAndValuesDo: [ :eventKind :subscription | 
		(#(
			mouseDown
			mouseStillDown
			mouseUp
			mouseMove
			mouseEnter
			mouseLeave
			mouseEnterDragging
			mouseLeaveDragging
			doubleClick ) includes: eventKind) ifTrue: [ ^subscription anyOne selector ].
	].
	^nil