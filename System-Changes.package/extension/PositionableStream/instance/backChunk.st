backChunk
	"Answer the contents of the receiver back to the previous terminator character.  Doubled terminators indicate an embedded terminator character."
	| terminator out ch |
	terminator := $!.
	out := (String new: 1000) writeStream.
	[(ch := self back) == nil] whileFalse: [
		(ch == terminator) ifTrue: [
			self oldPeekBack == terminator ifTrue: [
				self oldBack.  "skip doubled terminator"
			] ifFalse: [
				^ out contents reversed  "we're done!"
			].
		].
		out nextPut: ch.
	].
	^ out contents reversed