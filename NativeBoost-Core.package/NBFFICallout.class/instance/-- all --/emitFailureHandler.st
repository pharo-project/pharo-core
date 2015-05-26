emitFailureHandler
	"emit failure code only if there was a jump on failed label,
	and label are not already defined in code"
	| failLbl failWithCodeLabel |
	failLbl := self failedLabel.
	failWithCodeLabel  := self failedWithCodeLabel.

	self assert: failLbl isSet not.
	self assert: failWithCodeLabel isSet not.

	((asm isLabelUsed: failWithCodeLabel) or: [asm isLabelUsed: failLbl ] ) ifTrue: [
		asm decorateWith: 'FFI: handle failure' during: [   

		(asm isLabelUsed: failWithCodeLabel) ifTrue: [
			"assume that error code is passed in EAX"
			asm label: failWithCodeLabel.
			proxy primitiveFailFor: asm EAX.
			self epilogue ].

		(asm isLabelUsed: failLbl) ifTrue: [
			asm label: self failedLabel.
			proxy primitiveFail.
			self epilogue ].
	]]	
