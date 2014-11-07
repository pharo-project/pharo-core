initialize
	content := ''.
	title := (DateAndTime now asString copyReplaceAll: ':' with: '-') copyReplaceAll: '.' with: '-'