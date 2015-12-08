defaultAction
  "Default for Downgrade is to disallow, but still should check for locks"

  self checkAllowed.
  ^ super defaultAction