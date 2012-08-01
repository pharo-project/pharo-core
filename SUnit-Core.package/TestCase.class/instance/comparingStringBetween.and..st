private
comparingStringBetween: actual and: expected

	^ String streamContents: [:stream |
			stream
				nextPutAll: 'Expected ';
				nextPutAll: expected fullPrintString;
				nextPutAll: ' but was ';
				nextPutAll: actual fullPrintString;
				nextPutAll: '.']