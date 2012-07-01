private
critical: block
	^ accessSemaphore 
		critical: block 