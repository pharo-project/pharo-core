isValidUsername: aString

	^ (user contents username = aString or: [(self userNames includes: aString) not])