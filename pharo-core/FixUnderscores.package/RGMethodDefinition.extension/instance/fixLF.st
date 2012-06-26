*FixUnderscores
fixLF
	"Replace underscores with :=. Answer true if fixed or no fix necessary, false if manual fix required"

	| src cm ts |
	"Check if we do need to do anything"
	src := self realClass sourceCodeAt: self selector.
	(src includes: $_) ifFalse: [^true].

	"Chicken out if there is a literal underscore"
	cm := self realClass compiledMethodAt: self selector.
	(cm hasLiteralSuchThat: [:lit | 
		lit = $_ or: [lit isString and: [lit includes: $_]]]) ifTrue: [^false].

	"Otherwise, replace underscores with :="
	src := src copyReplaceAll: Character lf asString with: Character space asString, Character cr asString.
	ts := self timeStamp.
	ts = '' ifTrue: [ts := nil].
	self actualClass 
		compile: src
		classified: ClassOrganizer default
		withStamp: ts 
		notifying: nil.

	^true
