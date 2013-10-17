testInstructions
	"just print all of methods of Object and see if no error accours"

	| printer |
	printer := InstructionPrinter.
	Object methods do: [ :method | String streamContents: [ :stream | (printer on: method) printInstructionsOn: stream ] ]