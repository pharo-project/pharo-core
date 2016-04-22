OSWindowDriver subclass: #OSSDL2Driver
	instanceVariableNames: 'inputSemaphore eventQueue globalListeners'
	classVariableNames: 'EventLoopProcess JoystickMap WindowMap'
	poolDictionaries: 'SDL2Constants'
	category: 'OSWindow-SDL2'