as yet unclassified
setRepository: aRepository workingCopy: aWorkingCopy
	repository := aRepository.
	aWorkingCopy isNil ifFalse: [ selectedPackage := aWorkingCopy package].
	self refresh