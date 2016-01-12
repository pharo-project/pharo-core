printStackEntry: aContext

	^ (String streamContents: [:stream | aContext printDebugOn: stream ]) 
			replaceAll: Character cr with: Character space 