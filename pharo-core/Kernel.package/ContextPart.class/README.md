To the instruction parsing ability of InstructionStream I add the actual semantics for execution. The execution state is stored in the indexable fields of my subclasses. This includes temporary variables and a stack of values used in evaluating expressions. The actual semantics of execution can be found in my category "system simulation" and "instruction decode". These methods exactly parallel the operation of the Smalltalk machine itself.
	
The simulator is a group of my methods that do what the Smalltalk interpreter does: execute Smalltalk bytecodes. By adding code to the simulator, you may take statistics on the running of Smalltalk methods. For example,
	Transcript show: (ContextPart runSimulated: [3 factorial]) printString.

---------------------	
A mechanism for registering a custom primitive simulators added.
To register own simulator use:

#simulatePrimitiveNumber: num with: simulator
for numbered primitives , and 
#simulatePrimitive: primName module: moduleName with: simulator
for named primitives.
During (re)initialization, a ContextPart class sends a #registerPrimitiveSimulators
to all classes in system, which implementing it (but not to implementor's subclasses).
This can be used to make sure that your custom simulator is present. Hence, it is recommended to place registration code in #registerPrimitiveSimulators implementation for one of your classes.

In order to make sure that simulator(s) registered during package loading, make sure that one of your classes registering them (via class initialization mechanism). 

A simulator can be any object which implements the: 
#simulatePrimitiveFor:receiver:arguments:context:
and should simulate the invocation of corresponding primitive.

If simulated primitive fails, a simulator should answer PrimitiveFailToken. 
If primitive succeeds, it should answer a primitive return value.
