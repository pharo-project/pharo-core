addContent: aBlockWhoseValueReturnsAMorph
	| newMorph |

	"if we are still rendering some contents for another watcher,
	we stop and replace with the current request"
	process ifNotNil: [ process terminate ].
	process := nil.
	
	process := [
		newMorph := aBlockWhoseValueReturnsAMorph value.
		WorldState addDeferredUIMessage:  [
			self contentsMorph
				removeAllMorphs;
				addMorph: newMorph fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1))	
		]
	] newProcess. 
	process priority: Processor userBackgroundPriority.
	process resume