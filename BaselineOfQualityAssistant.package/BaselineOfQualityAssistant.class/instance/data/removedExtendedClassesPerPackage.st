removedExtendedClassesPerPackage

	^ {
		#QualityAssistant -> #(ReCritic ReEngine) .
		#QualityAssistantRecording ->
			#(ReAbstractCritic
			  ReCriticBanned
			  ReCriticEvent
			  ReInvocationOrderCritic
			  ReMissingMethodCritic
			  ReMultipleCriticsEvent
			  ReSingleCriticEvent) } asDictionary 