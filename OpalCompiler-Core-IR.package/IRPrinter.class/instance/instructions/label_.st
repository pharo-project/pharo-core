label: seqNum

	"add tab and cr since this does not get called within interpretInstruction:"
	stream cr.  "extra cr just to space out sequences"
	indent timesRepeat: [stream tab].
	stream nextPutAll: 'label: '.
	seqNum printOn: stream.
	stream cr.
