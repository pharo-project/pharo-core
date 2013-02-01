My instances represent a callback function, which will be called by external function at some moment.

To create a new callback, first, make a subclass of me and override #fnSpec method, which is an anonymous C function signature, 
l.e.  'int (int foo , float bar )'  , which tells that given callback class implements a callback for a function which takes two arguments (foo, bar),
and returns integer.
(Additionally you can override a #callType method which determines a callback function calling convention. A default calling convention for callbacks is #cdecl,
and others is barely used on x86 platforms).

To use callbacks, you must instantiate it first by passing block as an argument:

mycallback := MyCallback on: someBlock.

The block is the closure which will be evaluated when callback function get called, so the block must take same number of arguments as specified in #fnSpec method, and its evaluation result must yield a value which can be converted back C type value, which you speficied as a return type of callback function.
For example, if callback signature is 'int (int foo , float bar )' , we can create a callback with following block closure:

mycallback := MyCallback on: [:foo :bar |  (foo + bar ) asInteger ]. 

Passing callback as an argument to external function. 

For passing a callbacks as an argument to C function, you can use its class name for an argument type.

For example:

primStQSort: base len: size compare: qsortCallback

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self 
		nbCall: #(void qsort (NBExternalAddress base, ulong size, 1, NBQSortCallback qsortCallback))
		module: NativeBoost CLibrary 
		options: #( optMayGC )

as you can see , the third argument (qsortCallback) of function signature, has 'NBQSortCallback' type, which is a class name of existing NBFFICallback subclass. 
And, of course you are free to create any type aliases for the callback type to use different type names in signature. Just make sure that aliases are resolved correctly to an instance of NBFFICallbackType, during processing of the function signature by NBFFICallout class.

!!Note!! A special care must be taken for all functions which may make callbacks! 
In the above qsort() example, you can see an additional option for external call - #optMayGC, which tells a code generator to call an external function via call gate (a special stub which handling a code relocation caused by GC). Thats it, for any external functions, which may call the callback you must pass this option. 
Rationale: since most of external functions don't make any callbacks (and so has no chance to trigger GC), using this option by default will be an overkill, which will just spend extra CPU cycles for nothing. 
However, if you omit this option when calling the function(s) which may call back, expect a hard crash(es) to happen.   
If you unsure which external library functions may call back, you can turn on this option by default for all methods in your class by implementing  #ffiCalloutOptions method at class side:

MyClass class>>ffiCalloutOptions
 ^ #( optMayGC )

Like that, for any code generated to make external calls in methods of your class, this option will take an effect.

Callback lifetime. 

Each time you instantiating a new callback, it reserves a small amount of external memory , which must be freed once callback is no longer used.
This is done automatically, using object finalization scheme, once system detects that there is no more strong references to callback left.
So, you only need to make sure that an instance of callback, which you passed to some external function will be kept around in system, as long as
an external library has a pointer to it and can perform calls to it.  
If you lose the last reference to callback object before making sure that external library can no longer make calls to it, this will lead to an unpredictive behavior (segmentation fault, invalid instruction, memory corruption / pick your favorite).   

Redefining callback signature. 

A callback uses a lazy-initialization scheme to generate a common marshalling code which will be used by all instances of specific callback class.
So, changing a callback signature (by changing its #fnSpec method) will not have an immediate effect, if you already created at least a single instance of it. 
To make changes take effect, you must restart an image.
