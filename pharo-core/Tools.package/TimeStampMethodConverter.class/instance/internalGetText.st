private
internalGetText
	| list |
	list := method stamp subStrings.
	list ifEmpty: [ ^ 'No information available' ].
	
	^ String streamContents:[ :s |
			s << 'Last Modification :' << Character cr.
			s << Character tab << 'date:' << Character tab << (list allButFirst joinUsing: ' ') asTimeStamp << Character cr.
 			s << Character tab << 'by:' << Character tab << Character tab << list first ]