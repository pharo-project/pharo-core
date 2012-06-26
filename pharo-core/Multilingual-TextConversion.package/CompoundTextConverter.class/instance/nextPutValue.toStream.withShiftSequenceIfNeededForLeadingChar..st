private
nextPutValue: ascii toStream: aStream withShiftSequenceIfNeededForLeadingChar: leadingChar

	| charset |
	charset := EncodedCharSet charsetAt: leadingChar.
	charset ifNotNil: [
		charset nextPutValue: ascii toStream: aStream withShiftSequenceIfNeededForTextConverterState: state.
	] ifNil: [
		"..."
	].
