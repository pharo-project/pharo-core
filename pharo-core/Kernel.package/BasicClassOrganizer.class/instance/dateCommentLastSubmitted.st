accessing
dateCommentLastSubmitted
	"Answer a Date object indicating when my class comment was last submitted.  If there is no date stamp, or one of the old-time <historical>  guys, return nil"
	"RecentMessageSet organization dateCommentLastSubmitted"

	| aStamp tokens |
	(aStamp := self commentStamp) isEmptyOrNil ifTrue: [^ nil].
	tokens := aStamp findBetweenSubStrs: ' 
'.  "space is expected delimiter, but cr is sometimes seen, though of mysterious provenance"
	^ tokens size > 1
		ifTrue:
			[[tokens second asDate] ifError: [nil]]
		ifFalse:
			[nil]