display

   morph := QualityAssistantPluginMorph new.
	morph pluginDelegate: self.
	
	self updateMorph.
		
	^ morph