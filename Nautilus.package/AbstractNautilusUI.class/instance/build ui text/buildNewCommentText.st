buildNewCommentText

	| scrolledText |
	scrolledText := self newCommentTextModel 
		newScrolledText
		beForPlainText;
		beWrapped;
		yourself.
	newCommentTextModel announcer subscribe: RubTextUpdatedInModel send: #whenTextUpdatedInCommentPane: to: self.
	^ scrolledText