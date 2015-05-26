nbCall: fnSpec module: aModuleNameOrHandle options: callOptions
	" you can override this method if you need to"

	^ (self nbCalloutIn: thisContext sender)
		convention: self nbCallingConvention;
		options: callOptions;
		function: fnSpec module: aModuleNameOrHandle 