buildNewCommentText
	| scrolledText |
	scrolledText := self classCommentTextModel newScrolledText
		beForSmalltalkComment; 
		withCommentAnnotation;
		beWrapped;
		yourself.
	self classCommentTextModel setInitialText: self getComments.
	classCommentTextModel announcer weak
		subscribe: RubTextAcceptRequest send: #whenTextUpdatedInCommentPane: to: self;
		subscribe: NautilusExtendCommentSwitch send: #whenExtendCommentSwitch: to: self;
		subscribe: RubTextUpdatedInModel send: #whenTextUpdatedInCommentPane: to: self.
	^ scrolledText