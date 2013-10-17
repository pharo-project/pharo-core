servicesFromSelectorSpecs: symbolArray
	"Answer an array of services represented by the incoming symbols, eliminating any that do not have a currently-registered service.  Pass the symbol #- along unchanged to serve as a separator between services"

	"FileList new servicesFromSelectorSpecs: #(fileIn: fileIntoNewChangeSet: browseChangesFile:)"

	| services col | 
	col := OrderedCollection new.
	services := self class allRegisteredServices.
	symbolArray do: 
		[:sel | | res | 
			sel == #-
				ifTrue:
					[col add: sel]
				ifFalse:
					[res := services
							detect: [:each | each selector = sel] ifNone: [nil].
					res notNil
							ifTrue: [col add: res]]].
	^ col