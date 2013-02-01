unregistering
unregister: aWndClassName 

	^ self unregister: aWndClassName instance: NativeBoostWin32 getVMModuleHandle.
