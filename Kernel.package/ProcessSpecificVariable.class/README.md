My subclasses (not instances of them) keep state specific to the current process.

There are two kinds of process-specific variables: process-local (state available
for read and write in all methods inside the process), and dynamic variables
(implementing dynamic scope).