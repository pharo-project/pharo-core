classVarRefs
	"Request a browser of methods that store into a chosen instance variable"

	| aClass |
	(aClass := self classOfSelection) ifNotNil:
		[self systemNavigation  browseClassVarRefs: aClass].
