*Deprecated20
close: aBlock
	self deprecated: 'Send #close directly to the progress item itself' on: '22 May 2012' in: 'Pharo 2.0'.

	UniqueInstance ifNotNil: [UniqueInstance close: aBlock]