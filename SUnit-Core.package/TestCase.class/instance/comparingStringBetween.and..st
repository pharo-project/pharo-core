private
comparingStringBetween: actual and: expected

	^ String streamContents: [:stream |
			stream
				nextPutAll: 'Got ';
				print: actual;
				nextPutAll: ' instead of ';
				print: expected;
				nextPutAll: '.']