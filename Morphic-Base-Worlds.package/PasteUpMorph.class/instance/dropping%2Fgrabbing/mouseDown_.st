mouseDown: evt
	"Handle a mouse down event."
	| grabbedMorph handHadHalos |
	(self defaultYellowButtonMenuEnabled and: [evt yellowButtonPressed])
		ifTrue: [  (self yellowButtonActivity: evt shiftPressed) ifTrue: [ ^ self ]].

	grabbedMorph := self morphToGrab: evt.
	grabbedMorph ifNotNil: [
		grabbedMorph isSticky ifTrue: [^self].
		^evt hand grabMorph: grabbedMorph].

	(super handlesMouseDown: evt)
		ifTrue: [^super mouseDown: evt].

	handHadHalos := evt hand halo notNil.
	evt hand removeHalo. "shake off halos"
	self isWorldMorph ifTrue: [
		self currentWindow ifNotNil: [:topWindow |
			SystemWindow passivateTopWindow]]. "since pasteup will release keyboard focus now"
	evt hand releaseKeyboardFocus. "shake of keyboard foci"
 
	(evt shiftPressed not
			and: [ self isWorldMorph not 
				and: [ self wantsEasySelection not ]])
		ifTrue: [
		"explicitly ignore the event if we're not the world and we'll not select,
		so that we could be picked up if need be"
		evt wasHandled: false.
		^ self.
	].

	( evt shiftPressed or: [ self wantsEasySelection ] )
		 ifTrue: [
			"We'll select on drag, let's decide what to do on click"
			| clickSelector |
			clickSelector := nil.
			evt shiftPressed 
				ifTrue: [ clickSelector := #findWindow:.]
				ifFalse: [self isWorldMorph 
							ifTrue: [clickSelector := handHadHalos
										ifTrue: [ #delayedInvokeWorldMenu: ]
										ifFalse: [ #invokeWorldMenu: ]]].
		evt hand 
				waitForClicksOrDrag: self 
				event: evt 
				selectors: { clickSelector. nil. nil. #dragThroughOnDesktop: }
				threshold: 5.
	]
	ifFalse: [
		"We wont select, just bring world menu if I'm the world"
		self isWorldMorph ifTrue: [
			handHadHalos
				ifTrue: [ self delayedInvokeWorldMenu: evt ]
				ifFalse: [ self invokeWorldMenu: evt ]
		]
	].
