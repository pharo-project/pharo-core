buildNewCommentText

	| scrolledText |
	scrolledText := self newCommentTextModel 
		newScrolledText
		beForPlainText;
		beWrapped;
		yourself.
 	self updateCommentWith: self getComments.
	newCommentTextModel announcer subscribe: RubTextUpdatedInModel send: #whenTextUpdatedInCommentPane: to: self.
	^ scrolledText