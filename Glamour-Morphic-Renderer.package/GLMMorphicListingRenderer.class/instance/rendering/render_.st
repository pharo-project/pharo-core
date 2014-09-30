render: aPresentation
	| container textInput |
	treeModel := GLMTreeMorphModel new glamourPresentation: aPresentation.
	container := GLMMorphic containerMorph.
	treeMorph := self treeMorphFor: treeModel and: aPresentation.
	aPresentation allowsInput
		ifTrue: [
			textInput := self textInputFor: treeModel withHelpMessage: aPresentation helpMessage.
			treeMorph layoutFrame bottomOffset: -26.
			container addMorphBack: textInput ].
	container addMorphBack: treeMorph.
	self installActionsOnModel: treeModel fromPresentation: aPresentation.
	self installKeystrokeActionsOnMorph: treeMorph fromPresentation: aPresentation.
	aPresentation selection notNil
		ifTrue: [ treeModel announcer 
			suspendAll: self suspendedAnnouncements
			while: [ treeMorph model explicitSelection: aPresentation selection ] ].	"When the morph changes, we want to update the glamour model"
	treeModel announcer
		on: GLMTreeMorphSelectionChanged
		do: [ :ann | 
			aPresentation announcer
				suspendAllWhile: [ 
					aPresentation selection: ann selectionValue.
					aPresentation selectionPath: ann selectionPathValue ] ].
	treeModel announcer
		on: GLMTreeMorphStrongSelectionChanged
		do: [ :ann | aPresentation strongSelection: ann strongSelectionValue ].	"When the glamour model changes, we want to update the morph"
	aPresentation on: GLMContextChanged send: #actOnContextChanged: to: self.
	aPresentation on: GLMPresentationUpdated send: #actOnUpdatedPresentation: to: self.
	^ container