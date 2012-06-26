message list
selectedBytecodes
	"Answer text to show in a code pane when in showing-byte-codes mode"

	^ (self selectedClassOrMetaClass compiledMethodAt: self selectedMessageName ifAbsent: [^ '' asText]) symbolic asText