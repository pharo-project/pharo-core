basicActivate
	"Bring me to the front and make me able to respond to mouse and keyboard."

	| oldTop outerMorph |
	
	outerMorph := self topRendererOrSelf.
	outerMorph owner ifNil: [^ self "avoid spurious activate when drop in trash"].
	oldTop := TopWindow.
	oldTop == self ifTrue: [^self].
	oldTop
		ifNil: [self world ifNotNil: [:w | w layoutChanged]] "force taskbar update"
		ifNotNil: [oldTop changed]. "invalidate with old drop shadow bounds"
	TopWindow := self.
	oldTop ifNotNil: [oldTop isInWorld ifTrue: [oldTop passivate]].
	outerMorph owner firstSubmorph == outerMorph
		ifFalse: ["Bring me (with any flex) to the top if not already"
				outerMorph owner addMorphFront: outerMorph].
	self submorphsDo: [:m | m unlock].
	
	labelArea ifNotNil: [
		labelArea submorphsDo: [:m | m unlock].
		self setStripeColorsFrom: self paneColorToUse
	].
	self isCollapsed ifFalse: [ 
		model modelWakeUpIn: self.
		self positionSubmorphs.
		labelArea ifNil: [ self adjustBorderUponActivationWhenLabeless]
	].

	self privateFullBounds: nil; changed "ensure fullBounds computed for active drop shadow"
