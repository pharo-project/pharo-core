buildNewCommentText
	| scrolledText |
	scrolledText := self classCommentTextModel newScrolledText
		beForPlainText;
		withCommentAnnotation;
		beWrapped;
		yourself.
	self classCommentTextModel setInitialText: self getComments.
	classCommentTextModel announcer weak
		subscribe: NautilusExtendCommentSwitch send: #whenExtendCommentSwitch: to: self;
		subscribe: RubTextUpdatedInModel send: #whenTextUpdatedInCommentPane: to: self.
	^ scrolledText