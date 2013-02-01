initialize-release
initialize
	
	"actually, this should be determined by querying NativeBoost platformId"
	objectFormat := NBObjectFormat32 new.

	"set it to nil, if there is recursion"
	stackPtrAddress := [self class stackPointerAddress] on: NBCodeGenRecursion do: [ nil ].
	framePtrAddress := [self class framePointerAddress] on: NBCodeGenRecursion do: [ nil ].
	cStackPtrAddress := [self class cStackPointerAddress] on: NBCodeGenRecursion do: [ nil ].
	cFramePtrAddress := [self class cFramePointerAddress] on: NBCodeGenRecursion do: [ nil ].