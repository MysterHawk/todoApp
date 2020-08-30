import unicode

# Funcion for sanitize an input string (for the moment it limit only the range of characters in the unicode format)
proc sanitizeString(variable:string): string = 
  var 
      sanitized:string = ""
      dec: int = 0

  # For every character present in the string I check if it is outside of the limit setted
  # TODO for future changes, idk if this makes sense, but maybe it could limit the bloat of strange ascii characters present in the unicode format
  for character in runes(variable) : 
      dec = int(character)
      echo "The number is ",dec
      if (dec > 31 and dec < 127) or (dec > 191 and dec < 256) : sanitized.add(character)

  return sanitized


# Application begin
echo "Press Esc or Ctrl-C to quit"
echo "==============="
echo "NIM INDUSTRIES (TM) TERMINAL PROTOCOL, Todo List Application version 0.01V \n"
echo "Please enter your credentials:"
echo "username : "
let username:string = sanitizeString(readLine(stdin))
echo "Your username is ", username