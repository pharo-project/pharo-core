Responsible for creating a new class or changing the format of an existing class (from a class definition in a browser or a fileIn). This includes validating the definition, computing the format of instances, creating or modifying the accompanying Metaclass, setting up the class and metaclass objects themselves, registering the class as a global, recompiling methods, modifying affected subclasses, mutating existing instances to the new format, and more.

You typically only need to use or modify this class, or even know how it works, when making fundamental changes to how the Smalltalk system and language works.

Implementation notes:
ClassBuilder relies on the assumption that it can see ALL subclasses of some class. If there are any existing subclasses of some class, regardless of whether they have instances or not, regardless of whether they are considered obsolete or not, ClassBuilder MUST SEE THEM.
