edit pane
selectedBytecodes
	"Compile the source code for the selected message selector and extract and return
	the bytecode listing."
	| class selector |
	class := self selectedClassOrMetaClass.
	selector := self selectedMessageName.
	contents := class sourceCodeAt: selector.
	contents := self class evaluatorClass new
					parse: contents
					in: class
					notifying: nil.
	contents := contents generate.
	^ contents symbolic asText