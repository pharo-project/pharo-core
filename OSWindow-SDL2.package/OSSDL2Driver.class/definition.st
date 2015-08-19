OSWindowDriver subclass: #OSSDL2Driver
	instanceVariableNames: 'inputSemaphore eventQueue windowMap globalListeners'
	classVariableNames: 'EventLoopProcess'
	poolDictionaries: 'SDL2Constants'
	category: 'OSWindow-SDL2'