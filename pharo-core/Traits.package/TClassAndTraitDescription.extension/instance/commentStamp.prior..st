filein/out
commentStamp: changeStamp prior: indexAndOffset
	"Prior source link ignored when filing in."

	^ ClassCommentReader new setClass: self
				category: #Comment
				changeStamp: changeStamp