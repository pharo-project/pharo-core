private
contextStackIndex: anInteger oldContextWas: oldContext 
	"Change the context stack index to anInteger, perhaps in response to
	user selection."
	| isNewMethod selectedContextSlotName index |
	contextStackIndex := anInteger.
	anInteger = 0
		ifTrue: [currentCompiledMethod := contents := nil.
			self changed: #contextStackIndex.
			self decorateButtons.
			self contentsChanged.
			contextVariablesInspector object: nil.
			receiverInspector object: self receiver.
			^ self].
	selectedContextSlotName := contextVariablesInspector selectedSlotName.
	isNewMethod := oldContext == nil
				or: [oldContext method ~~ (currentCompiledMethod := self selectedContext method)].
	isNewMethod
		ifTrue: [contents := self selectedMessage.
			self contentsChanged.
			self pcRange].
	self changed: #contextStackIndex.
	
	"update the state of create button"
	self isInterruptedContextDoesNotUnderstand
		ifTrue: [self changed: #isInterruptedContextDoesNotUnderstand].
	self decorateButtons.
	contextVariablesInspector object: self selectedContext.
	((index := contextVariablesInspector fieldList indexOf: selectedContextSlotName) ~= 0
			and: [index ~= contextVariablesInspector selectionIndex])
		ifTrue: [contextVariablesInspector toggleIndex: index].
	receiverInspector object: self receiver.
	isNewMethod
		ifFalse: [self changed: #contentsSelection]