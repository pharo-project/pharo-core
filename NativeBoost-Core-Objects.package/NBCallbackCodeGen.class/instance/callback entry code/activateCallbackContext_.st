activateCallbackContext: callbackClass

	"Activate a callback context, which is a 
	
	MethodContext sender: s receiver: r method: m arguments: args 
	"

		| ctx method fld |
		
		method := callbackClass callbackEnterMethod.
		ctx := gen reserveTemp.
		fld := gen reserveTemp.
		
		proxy positive32BitIntegerFor: EBP.		
		proxy pushRemappableOop: EAX.  "push EBP -> remappable oops stack"
	
		proxy createInstanceOf: MethodContext size: method frameSize.
		asm mov: EAX to: ctx.
		
		"Fill the context state, which is #('sender' 'pc' 'stackp' 'method' 'closureOrNil' 'receiver')"
	
		proxy integerObjectOf: method initialPC.
		asm mov: ctx to: ECX;
			mov: EAX to: ECX ptr + (proxy ivar: #pc in: MethodContext).
	
		proxy integerObjectOf: method numTemps.
		asm mov: ctx to: ECX;
			mov: EAX to: ECX ptr + (proxy ivar: #stackp in: MethodContext).
		
		NativeBoost extraRootsRegistry emitFetchCallback: cbIndex generator: gen.
		"EAX - callback oop"
	
		asm mov: ctx to: ECX;
			mov: EAX to: ECX ptr + (proxy ivar: #receiver in: MethodContext);
			mov: EAX ptr + (proxy ivar: #enterMethod in: NBFFICallback) to: EDX;
			mov: EDX to: ECX ptr + (proxy ivar: #method in: MethodContext).
			
		

		proxy firstIndexableField: ECX.
		asm mov: EAX to: fld.

		proxy popRemappableOop. "pop EBP from remappable oops stack"
		asm mov: fld to: ECX;
		mov: EAX to: ECX ptr + proxy oopSize. "put stackp as 1st method argument"

		proxy popRemappableOop. "saved arguments array (see #emitArgumentsCoercion)"
		asm mov: fld to: ECX;
		mov: EAX to: ECX ptr.
		
		proxy primitiveMethod.
		asm mov: fld to: ECX;
		mov: EAX to: ECX ptr + (2*proxy oopSize). "save current primitive method oop"


		"Now we swapping the currently active VM context with the context we're just created"		 
		proxy pushRemappableOop: ctx.
		proxy swapActiveContext: [ ctx ] restoreMethod: [ 0 ]. " EAX <- activeContext"
		asm mov: EAX to: ctx.
		proxy popRemappableOop.
		
		"set a sender in new context to be the old context
		ctx - old context, EAX - new context"
		asm mov: ctx to: ECX.
		asm mov: ECX to: EAX ptr + (proxy ivar: #sender in: MethodContext).
