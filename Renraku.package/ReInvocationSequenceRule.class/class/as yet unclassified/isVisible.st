isVisible

	^ self name ~= #ReInvocationSequenceRule and: [ 
		super isVisible ]