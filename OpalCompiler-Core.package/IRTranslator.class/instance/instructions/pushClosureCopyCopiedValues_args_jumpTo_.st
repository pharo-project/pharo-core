pushClosureCopyCopiedValues: copiedValues args: args jumpTo: labelSymbol
	self doPending.
	copiedValues do: [:name | self pushTemp: name].

	gen pushClosureCopyNumCopiedValues: copiedValues size 
			numArgs: args size 
			to: currentInstr destination orderNumber.
	self pushScope: currentInstr.
	gen pushNClosureTemps: currentInstr definedTemps size.
	gen mapBytesTo: currentInstr. 
