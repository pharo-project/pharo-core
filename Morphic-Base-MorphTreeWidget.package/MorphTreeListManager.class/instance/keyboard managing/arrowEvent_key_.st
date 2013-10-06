arrowEvent: event key: aChar 
	"Handle a keyboard navigation character. Answer true if handled, false
	if not."
	| newIndex targetMorph targetIndex multi |
	self allNodeMorphs
		ifEmpty: [^ false].
	newIndex := nil.
	targetMorph := lastClickedMorph.
	targetIndex := targetMorph
				ifNil: [0]
				ifNotNil: [targetMorph index].
	multi := (event shiftPressed and: [self isMultiple]) or: [self autoMultiSelection].
	aChar = Character arrowDown
		ifTrue: [newIndex := targetIndex + 1].
	aChar = Character arrowUp
		ifTrue: [newIndex := targetIndex - 1 max: 1].
	aChar = Character home
		ifTrue: [newIndex := 1].
	aChar = Character end
		ifTrue: [newIndex := self allNodeMorphs size].
	aChar = Character pageUp
		ifTrue: [newIndex := targetIndex - self numSelectionsInView max: 1].
	aChar = Character pageDown
		ifTrue: [newIndex := targetIndex + self numSelectionsInView].
	aChar = Character arrowRight
		ifTrue: [
			targetMorph ifNil: [^ false].
			(targetMorph canExpand and: [targetMorph isExpanded not])
				ifTrue: [
					self toggleExpandedState: targetMorph.
					^ true]
				ifFalse: [newIndex := targetIndex + 1]].
	aChar = Character arrowLeft
		ifTrue: [
			targetMorph ifNil: [^ false].
			(targetMorph canExpand and: [targetMorph isExpanded])
				ifTrue: [
					self toggleExpandedState: targetMorph.
					^ true]
				ifFalse: [ | parent |
					parent := targetMorph parent.
					parent
						ifNil: [newIndex := targetIndex - 1 max: 1]
						ifNotNil: [
							self toggleExpandedState: parent.
							newIndex := parent index]]].
	newIndex notNil
		ifTrue: [
			self
				setSelectionIndexFromKeyboard: newIndex
				multiSelection: multi
				event: event.
			self selectionChanged.
			^ true].
	^ false