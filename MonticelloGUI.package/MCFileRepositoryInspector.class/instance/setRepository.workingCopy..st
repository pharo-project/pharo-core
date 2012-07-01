as yet unclassified
setRepository: aFileBasedRepository workingCopy: aWorkingCopy
	order := self class order.
	repository := aFileBasedRepository.
	
	aWorkingCopy
		ifNil: [ selectedPackage := self packageList isEmpty ifFalse: [self packageList first asString]]
		ifNotNil: [ selectedPackage := aWorkingCopy ancestry ancestorString copyUpToLast: $- ]. 
	
	[ self refresh.
	MCWorkingCopy addDependent: self.] fork.
