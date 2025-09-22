import file("lab2-support.arr") as support

#Encryptor 1
support.encryptor1("Hello")

fun my-encryptor1(s :: String) -> String:
  string-repeat(s, 5)
end 

support.test-encryptor1(my-encryptor1)

#Encryptor 2

support.encryptor2("umbrella")

fun my-encryptor2(s :: String) -> String:
  string-substring(s, 0, 4)
end

support.test-encryptor2(my-encryptor2)

#Encryptor 3

support.encryptor3("Hello.")

fun my-encryptor3(s :: String):
  string-replace(s, ".", "!")
end

support.test-encryptor3(my-encryptor3)

#Encryptor 4

support.encryptor4("umbrella")

fun my-encryptor4(s :: String) -> String block:
  Repeat = string-substring(s, 0, 4)
  string-repeat(Repeat, 5)
end

support.test-encryptor4(my-encryptor4)

#Encryptor 5

#A-B, E-F, I-J, O-P, U-V

support.encryptor5("ABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%^&*()1234567890,./;'[]-_<?>:")

support.encryptor5("")

fun my-encryptor5(s :: String) -> String:
  str1 = string-replace(s, "a", "b")
  str2 = string-replace(str1, "e", "f")
  str3 = string-replace(str2, "i", "j")
  str4 = string-replace(str3, "o", "p")
  string-replace(str4, "u", "v")
end

support.test-encryptor5(my-encryptor5)