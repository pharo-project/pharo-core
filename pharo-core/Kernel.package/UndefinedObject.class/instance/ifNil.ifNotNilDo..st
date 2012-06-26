testing
ifNil: nilBlock ifNotNilDo: ifNotNilBlock
	"Evaluate the block for nil because I'm == nil"

	^ nilBlock value