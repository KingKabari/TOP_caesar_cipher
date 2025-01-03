 def cipher (text_to_be_encrypted, shift)
   # Initialize result as an empty string
   result =""
   #Iterate through each character in the input string
   text_to_be_encrypted.each_char do |char|
     # Check if the character is a letter (either uppercase or lowercase)
     if char.match(/[a-zA-Z]/)
       # Determine whether it's uppercase or lowercase
       base = char.ord < 91 ? 65 : 97
       # Encrypt the character by shifting its ASCII value and wrapping around using modulo
     result += ((char.ord - base + shift) % 26 + base).chr # - base - shift to decrypt message
   else
     result += char
   end
 end
 result
end
