I'm a special dictionary holding methods. I am just like a normal Dictionary, except that I am implemented differently.  Each Class has an instance of MethodDictionary to hold the correspondence between selectors (names of methods) and methods themselves.

In a normal Dictionary, the instance variable 'array' holds an array of Associations.  Since there are thousands of methods in the system, these Associations waste space.  

Each MethodDictionary is a variable object, with the list of keys (selector Symbols) in the variable part of the instance.  The variable 'array' holds the values, which are CompiledMethods.