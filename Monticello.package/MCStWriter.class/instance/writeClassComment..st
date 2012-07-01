writing
writeClassComment: definition
	stream
		cr;
		nextPut: $!;
		nextPutAll: definition className;
		nextPutAll: ' commentStamp: ';
		store: definition commentStamp;
		nextPutAll: ' prior: 0!';
		cr;
		nextChunkPut: definition comment;
		cr.