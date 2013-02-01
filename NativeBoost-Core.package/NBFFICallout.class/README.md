Callout arguments can be either:
- an integer constant, boolean or nil
- a type name (string or symbol)
- a class name
- a class variable
- any other object, which responds to #asFFICalloutArgument:


An object , answered by #asFFICalloutArgument: should implement 
a public protocol of NBExternalType 

Todo....
Options:

argument coercion options:
	#coerceBoolToInt  - Boolean   -> C integer (0/1)
	#coerceNilToInt  -  nil       -> C integer (0)
	#coerceFloatToInt - Float     -> C integer
	#coerceCharToInt -  Character -> C integer

	#noTypeChecking - do not perform any type checking for pushed arguments 
	  (dangerous, but sometimes can be useful)
		
return value coercion options:
	#returnBoolAsInt  -  do not turn a bool(0/1) into Boolean (true/false)

cdecl calling convention:
   1.   Function parameters are pushed on the stack in a right-to-left order.
   2. Any local variables declared by the callee are allocated on the stack by subtracting the number of bytes required from esp. That is (sub esp,NUMBER_OF_BYTES).
   3. Registers eax, ecx, and edx are available for use in the subprogram.
   4. Registers ebx, esi, edi, and ebp must not be modified by the callee. (In fact, they may be used, but their original values must be restored before exiting the callee).
   5. When the callee terminates, any local variable must be released by restoring esp to its original value (mov esp,ebp).
   6. Function return values are returned in the eax register (except for floating point values, which are returned in the st0 register).
   7. After the callee is over, the parameters that were pushed on the stack by the caller must be removed by the caller itself once the callee is terminated. It can be done in two ways :
          * pop ecx n times, where n is the number of parameters pushed (cons: a useless result is stored in ecx, and ecx's value changes)
          * add esp,NUMBER_OF_BYTES_PREVIOUSLY_PUSHED (1 parameter pushed = 4 bytes on a 32 bit machine)