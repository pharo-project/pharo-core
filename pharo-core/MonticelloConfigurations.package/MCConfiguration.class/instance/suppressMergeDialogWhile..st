private
suppressMergeDialogWhile: aBlock
	^[aBlock value]
		on: MCMergeResolutionRequest
		do: [:request |
			request merger conflicts isEmpty
				ifTrue: [request resume: true]
				ifFalse: [request pass]]