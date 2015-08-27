OSWindowDriver subclass: #OSSDL2Driver
	instanceVariableNames: 'inputSemaphore eventQueue globalListeners'
	classVariableNames: 'EventLoopProcess WindowMap'
	poolDictionaries: 'SDL2Constants'
	category: 'OSWindow-SDL2'