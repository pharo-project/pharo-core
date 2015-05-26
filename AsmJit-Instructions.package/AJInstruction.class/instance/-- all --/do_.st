do: aBlock
	"evaluate all instructions for the list"
	| nn |
	nn := self.
	[ nn notNil ] whileTrue: [
		aBlock value: nn.
		nn := nn next.
	].