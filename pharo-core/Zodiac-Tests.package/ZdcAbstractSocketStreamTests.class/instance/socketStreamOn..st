private
socketStreamOn: socket
	| stream |
	(stream := SocketStream on: socket)
		binary;
		shouldSignal: true;
		autoFlush: false;
		bufferSize: self socketBufferSize;
		timeout: self socketStreamTimeout.
	^ stream