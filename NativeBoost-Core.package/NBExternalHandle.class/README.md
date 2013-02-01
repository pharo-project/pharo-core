Usually, my instances representing an opaque object handle returned by external function. There's little what we can do with it, except from passing as argument to another function(s).

I hold a byte array of a pointer size (typicaly 4 or 8 bytes). You can set the raw handle value with #value: and read it with #value.


Note, do not subclass from me directly. If you want to represent some opaque C  data structure (handle, stucture, pointer to structure etc),
subclass from NBExternalObject instead. Otherwise, if you insist, override #asNBExternalType: method on class side in own subclass to provide own marshalling 
for instances of your subclass(es) (but it makes even less sense since once you define own #asNBExternalType:, you free to use any base class for your subclasses,
unless of course you want to reuse some of my methods)