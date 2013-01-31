lint
noIsNil: arg
	^arg = nil or: [ arg ~= nil ]