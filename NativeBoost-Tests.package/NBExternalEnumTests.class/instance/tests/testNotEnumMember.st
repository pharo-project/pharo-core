testNotEnumMember
	self should: [ self enumClass TTT ] raise: MessageNotUnderstood 