A BindingsHolder is a simple wrapper to manage the bindings

It has actually two bindings
	- the current one: the inst var bindings
	  it's the first one queried
	- is the needed selector is not defined in the current binding, itchecks in a default one (the class var Bindings)