buildDebugMenu: aHand
	"Answer a debugging menu for the receiver. 
	 The hand argument is seemingly historical and plays no role presently"

	| aMenu |
	aMenu := UIManager default newMenuIn: self for: self.
	aMenu addStayUpItem.
	(self hasProperty: #errorOnDraw) ifTrue:
		[aMenu add: 'start drawing again' translated action: #resumeAfterDrawError.].
	(self hasProperty: #drawError) ifTrue:
		[aMenu add: 'debug drawing error' translated action: #debugDrawError.
		aMenu addLine].
	(self hasProperty: #errorOnStep) ifTrue:
		[aMenu add: 'start stepping again' translated action: #resumeAfterStepError.
		aMenu addLine].

	aMenu add: 'inspect morph' translated action: #inspectInMorphic:.
	aMenu lastItem icon: Smalltalk ui icons smallInspectItIcon.
	aMenu add: 'inspect owner chain' translated action: #inspectOwnerChain.
	aMenu lastItem icon: Smalltalk ui icons smallInspectItIcon.
	self isMorphicModel ifTrue: [
		aMenu add: 'inspect model' translated target: self model action: #inspect.
		aMenu lastItem icon: Smalltalk ui icons smallInspectItIcon.
		(self model class inheritsFrom: ComposableModel)
			ifTrue: [ 
				aMenu add: 'edit model' translated target: self model action: #edit.
				aMenu lastItem icon: Smalltalk ui icons smallInspectItIcon ]].
     aMenu add: 'explore morph' translated target: self selector: #explore.
	aMenu lastItem icon: Smalltalk ui icons smallInspectItIcon.
	aMenu addLine.
	aMenu add: 'browse morph class' translated target: self selector: #browseHierarchy.
	(self isMorphicModel)
		ifTrue: [aMenu
				add: 'browse model class'
				target: self model
				selector: #browseHierarchy].
	aMenu add: 'explore view hierarchy' translated target: self selector: #exploreViewHierarchy.
	^ aMenu