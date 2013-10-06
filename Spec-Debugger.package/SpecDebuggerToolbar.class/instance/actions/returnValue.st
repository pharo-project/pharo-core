returnValue

	self okToChange ifTrue: [ 
		self session returnValueFrom: self currentContext ]