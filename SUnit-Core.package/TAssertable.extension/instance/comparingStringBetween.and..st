private
comparingStringBetween: actual and: expected

	^ String streamContents: [:stream |
			stream
				nextPutAll: 'Got ';
				nextPutAll: expected fullPrintString;
				nextPutAll: ' instead of ';
				nextPutAll: actual fullPrintString;
				nextPutAll: '.']