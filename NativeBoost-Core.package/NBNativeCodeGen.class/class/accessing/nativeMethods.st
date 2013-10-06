nativeMethods
	" self nativeMethods "
	^ CompiledMethod allInstances select: [:m |
		m trailer kind = #NativeCodeTrailer 
		and: [ m isInstalled ] ]