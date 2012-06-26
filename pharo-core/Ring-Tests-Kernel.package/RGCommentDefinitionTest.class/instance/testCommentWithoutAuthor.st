testing
testCommentWithoutAuthor
	| newComment |
	
	newComment:= RGFactory current createComment
						content: 'This is a comment for test';
						stamp: '3/22/2011 14:51';
						yourself.
	
	self assert: (newComment hasAuthorAlias not).