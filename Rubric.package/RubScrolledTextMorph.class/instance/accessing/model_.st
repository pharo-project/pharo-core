model: aModel
	self textArea model: aModel.
	self setTextWith: self getTextFromModel.
	self setSelection: self getSelectionFromModel.
	aModel announcer subscribe: RubTextAcceptedInModel send: #whenTextAcceptedInModel: to: self.	
	aModel announcer subscribe: RubEditsStateChangedInModel send: #whenEditsStateChangedInModel: to: self.
	aModel announcer subscribe: RubTextSetInModel send: #whenTextSetInModel: to: self.	
	aModel announcer subscribe: RubTextUpdatedInModel send: #whenTextUpdatedInModel: to: self.	
	aModel announcer subscribe: RubPrimarySelectionUpdatedInModel send: #whenPrimarySelectionUpdatedInModel: to: self.
	aModel announcer subscribe: RubCanceEditRequestedInModel send: #whenCanceEditRequestedInModel: to: self.	
	aModel announcer subscribe: RubConfigurationChange send: #whenConfigurationChangedFromModel: to: self.
