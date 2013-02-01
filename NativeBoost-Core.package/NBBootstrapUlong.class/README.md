A special hacky type, 
which storing a ulong function return value into existing byte array instance.
A method, which using this type in callout should have an argument , named 'returnValueBuffer'
and pass a byte array instance, big enough to store ulong there.

This is essentially used during NativeBoost bootstrap, to generate & install the
gall gate function, without calling any of interpreterProxy function which may cause GC.