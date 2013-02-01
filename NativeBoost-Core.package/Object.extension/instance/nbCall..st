*NativeBoost-core
nbCall: fnSpec
	" you can override this method if you need to"
	
	^ (self nbCalloutIn: thisContext sender)
		convention: self nbCallingConvention;
		function: fnSpec module: self nbLibraryNameOrHandle 