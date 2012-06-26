utilities
allSystemPragmas
	^ (Array
		streamContents: [:stream | SystemNavigation default
				allBehaviorsDo: [:behavior | Pragma
						withPragmasIn: behavior
						do: [:pragma | stream nextPut: pragma]]]) 