monticello menus behavior
addSliceFor: aWindow

	(MCSliceMaker openFor: aWindow)
		ifNotNil: [:sliceInfo || workingCopy |
			 workingCopy := sliceInfo makeSlice.
			workingCopy ifNotNil: [
					workingCopy repositoryGroup addRepository: MCHttpRepository inboxRepository.
					^ workingCopy ]].
	^ nil