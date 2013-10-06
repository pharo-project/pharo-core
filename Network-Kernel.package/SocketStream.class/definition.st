Object subclass: #SocketStream
	instanceVariableNames: 'recentlyRead socket inBuffer outBuffer inNextToWrite outNextToWrite lastRead timeout autoFlush bufferSize binary shouldSignal'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Network-Kernel'