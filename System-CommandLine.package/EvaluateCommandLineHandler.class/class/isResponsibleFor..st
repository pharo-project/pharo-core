handler selection
isResponsibleFor: commandLineArguments
	"directly handle top-level -e and --evaluate options"
	commandLineArguments withFirstArgument: [ :arg| 
		(#('-e' '--evaluate') includes: arg)
			ifTrue: [ ^ true ]].
	
	"check if we have an opened stdin"
	FileStream stdin ifNotNilDo:[ :stream| 
		stream atEnd ifFalse: [ ^ true ]].
	
	^ commandLineArguments includesSubCommand: self commandName