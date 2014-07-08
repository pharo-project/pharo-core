isValidUsername: aString

	^ (user value username = aString or: [(self userNames includes: aString) not])