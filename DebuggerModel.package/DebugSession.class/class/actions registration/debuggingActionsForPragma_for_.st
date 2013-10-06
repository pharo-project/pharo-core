debuggingActionsForPragma: aSymbol for: aDebugger

	^ ((DebugAction allSubclasses 
		select: [ :each | each hasAbstractMethods not ]) 
			inject: OrderedCollection new 
			into: [ :currentActions :aClass |  
				currentActions 
					addAll: (
						self 
							debuggingActionsFromClass: aClass 
							forPragma: aSymbol 
							forDebugger: aDebugger); 
					yourself ])