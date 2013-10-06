matchContext: aContext

	^ (left matches: aContext ) or: [ right matches: aContext ]