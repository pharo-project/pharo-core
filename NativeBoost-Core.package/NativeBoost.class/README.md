i am a core class, which provides a common functionality, 
required by many NativeBoost facilities to function, including:

- basic memory operations
- external roots registry
- call gate function
- session management

Every new session, i using an unique instance,
which is platform specific (see my subclasses).

To access a current session instance, you can issue:

NativeBoost forCurrentPlatform

