protocol
value: aNumber
	<api: #integer min: #min max: #max getter:#value registration: #whenValueChanged:>
	"Set the value in a range between min and max"

	value contents: aNumber.
	self changed: #value.