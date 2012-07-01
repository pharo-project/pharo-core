object filein
convertStepList
	"Convert the old-style step list (an Array of Arrays) into the new-style StepMessage heap"

	| newList |
	(stepList isKindOf: Heap) 
		ifTrue: 
			[^stepList sortBlock: self stepListSortBlock	"ensure that we have a cleaner block"].
	newList := Heap sortBlock: self stepListSortBlock.
	stepList do: 
			[:entry | | wakeupTime morphToStep | 
			wakeupTime := entry second.
			morphToStep := entry first.
			newList add: (StepMessage 
						scheduledAt: wakeupTime
						stepTime: nil
						receiver: morphToStep
						selector: #stepAt:
						arguments: nil)].
	stepList := newList