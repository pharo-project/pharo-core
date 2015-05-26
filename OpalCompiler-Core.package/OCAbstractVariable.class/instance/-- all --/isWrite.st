isWrite
	^ usage = #write or: [ self isRepeatedWrite ]