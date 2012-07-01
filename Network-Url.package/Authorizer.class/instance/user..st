authentication
user: userId
	"Return the requesting user."
	^users at: userId ifAbsent: [ self error: (self class unauthorizedFor: realm) ]