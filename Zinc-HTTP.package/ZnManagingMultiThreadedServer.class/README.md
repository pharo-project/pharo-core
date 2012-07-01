ZnManagingMultiThreadedServer is a ZnMultiThreadedServer that manages the socket stream connections used by the worker threads that are spawned.

Create explicitely using:

	ZnManagingMultiThreadedServer startDefaultOn: 1701.
	ZnManagingMultiThreadedServer stopDefault.

Part of Zinc HTTP Components.