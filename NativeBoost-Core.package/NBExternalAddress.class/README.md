My primary function is to represent a pointer (address) to memory, in cases, when a kind of data under given address does not having any special structure,
which can be reflected more nicely in language. 
Usually i can be used to hold pointer(s) to buffers (void*), or to allocated memory region etc.
I providing some basic interface for reading/writing data into memory where i pointing to, as well as some convenience methods.