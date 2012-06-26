change logging
event: anEvent
	"Hook for SystemChangeNotifier"
	anEvent itemKind = SystemChangeNotifier classKind ifTrue: [
		anEvent isRemoved 
			ifTrue: [self noteRemovalOf: anEvent item].
		anEvent isAdded 
			ifTrue: [self addClass: anEvent item].
		anEvent isModified 
			ifTrue: [anEvent anyChanges ifTrue: [self changeClass: anEvent item from: anEvent oldItem]].
		anEvent isCommented 
			ifTrue: [self commentClass: anEvent item].
		anEvent isRenamed 
			ifTrue: [self renameClass: anEvent item from: anEvent oldName to: anEvent newName].
		anEvent isReorganized
			ifTrue: [self reorganizeClass: anEvent item].
		anEvent isRecategorized
			ifTrue: [self changeClass: anEvent item from: anEvent item].
	].

	anEvent itemKind = SystemChangeNotifier methodKind ifTrue: [
		anEvent isAdded
			ifTrue: [self noteNewMethod: anEvent item forClass: anEvent itemClass selector: anEvent itemSelector priorMethod: nil].
		anEvent isModified
			ifTrue: [self noteNewMethod: anEvent item forClass: anEvent itemClass selector: anEvent itemSelector priorMethod: anEvent oldItem].
		anEvent isRemoved
			ifTrue: [self removeSelector: anEvent itemSelector class: anEvent itemClass priorMethod: anEvent item lastMethodInfo: {anEvent item sourcePointer. anEvent itemProtocol}].
		anEvent isRecategorized
			ifTrue: [self reorganizeClass: anEvent itemClass].
	].