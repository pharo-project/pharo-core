initialize-release
withTempNames: tempNames "<Array|String>"
	"Optionally initialize the temp names to be used when decompiling.
	 For backward-copmpatibility, if tempNames is an Array it is a single
	 vector of temp names, probably for a blue-book-compiled method.
	 If tempNames is a string it is a schematic string that encodes the
	 layout of temp vars in the method and any closures/blocks within it.
	 Decoding encoded tempNames is done in decompile:in:method:using:
	 which has the method from which to derive blockStarts.
	 See e.g. BytecodeEncoder>>schematicTempNamesString for syntax."
	tempVars := tempNames