accessing
sizeBuffer: size
    buffer ifNotNil: [self flushBuffer].
    buffer := ByteArray new: size.
