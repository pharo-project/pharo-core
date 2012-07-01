writing
writeScriptDefinition: definition
	stream nextChunkPut: (
		'(PackageInfo named: {1}) {2}: {3}'
		format: {
			"{1}" definition packageName printString.
			"{2}" definition scriptSelector. 
			"{3}" definition script printString
		}); cr