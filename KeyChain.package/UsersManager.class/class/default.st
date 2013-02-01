instance creation
default

	^ DefaultUserManager ifNil: [ DefaultUserManager := self new ]