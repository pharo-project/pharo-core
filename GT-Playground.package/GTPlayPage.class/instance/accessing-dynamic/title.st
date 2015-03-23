title
	^ (self creationTime asString copyReplaceAll: ':' with: '-') copyReplaceAll: '.' with: '-'