evaluatorForSignature: signature "<String>"

	Pragma withPragmasIn: self class do:
		[:pragma|
		(pragma key == #signature:abi:
		and: [(pragma argumentAt: 2) = ABI
		and: [(pragma argumentAt: 1) = signature]]) ifTrue:
			[^pragma method]].
	self error: 'could not find Callback signature'