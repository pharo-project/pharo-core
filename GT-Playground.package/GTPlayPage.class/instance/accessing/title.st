title
	^ (modificationTime asString copyReplaceAll: ':' with: '-') copyReplaceAll: '.' with: '-'