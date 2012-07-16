private in
fillBytes: bytes startingAt: offset count: count
	"Ask to read count elements into bytes starting at offset. Do not wait. Return read count.
	Overwritten: decrypt and if necessary ask the socket for encrypted data using a super call."
	
	| processedCount processData inCount |
	processData := [
		processedCount < 0 ifTrue: [ ^ self sslException: 'decrypt failed' code: processedCount ].
		processedCount > 0
			ifTrue: [
				bytes replaceFrom: offset to: offset + processedCount - 1 with: out startingAt: 1.
				^ processedCount ] ].
	self resetEncryptedBuffers.
	processedCount := self sslSession decrypt: in from: 1 to: 0 into: out.
	processData value.
	inCount := self fillEncryptedBytes: in startingAt: 1 count: in size.
	processedCount := self sslSession decrypt: in from: 1 to: inCount into: out.
	processData value.
	^ 0