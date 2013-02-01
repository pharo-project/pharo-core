*Manifest-Core
longDescription

^ 'This smell arises when a message is sent by a method,  but no class in the system implements such a message. This method sent will certainly cause a doesNotUnderstand: message when they are executed.  Further this rule checks if messages sent to self or super exist in the hierarchy, since these can be statically typed.'