class initialization
installEventSensorFramework: fetcherClass
	"Installs the new sensor framework."

	| newSensor |
	"Do some extra cleanup"
	Smalltalk removeFromShutDownList: InputEventFetcher.
	Smalltalk removeFromStartUpList: InputEventFetcher.

	InputEventFetcher deinstall.

	newSensor := self new.
	fetcherClass install.
	newSensor registerIn: InputEventFetcher default.
	
	"Shut down old sensor"
	Sensor shutDown.
	Smalltalk removeFromShutDownList: Sensor class.
	Smalltalk removeFromStartUpList: Sensor class.
	

	"Note: We must use #become: here to replace all references to the old sensor with the new one, since Sensor is referenced from all the existing controllers."
	Sensor becomeForward: newSensor. "done"

	"Register the interrupt handler"
	UserInterruptHandler new registerIn: InputEventFetcher default.

	Smalltalk addToStartUpList: Sensor class after: fetcherClass.
	Smalltalk addToShutDownList: Sensor class after: Form.

	"Project spawnNewProcessAndTerminateOld: true"