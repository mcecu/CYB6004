#!/usr/bin/python3
import hashlib
#I can make the script work as desired if I physically set the password myself
#Therefore it seems fairly redundant since it requires knowledge of the password in the first place!
target = "abc"
#rearranging the code from the dictionary attack script allowed for hashing of the target characters
targetHash = hashlib.sha256(target.encode("utf-8")).hexdigest()
#Declaring the characters the script will search for
alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPRSTUVWXYZ0123456789"
passwords = []
#the .append function adds an item to the end of a list, in this case, a letter (or number) is added on to the password list until a crack is found.
for letter in alphabet:
    passwords.append(letter)
cracked = False
while not cracked:
    for password in passwords:
        passwordHash = hashlib.sha256(password.encode("utf-8")).hexdigest()
        print(f"Trying password {password}:{passwordHash}")
#if the hash is the same as the correct password's hash then we have cracked the password
        if passwordHash == targetHash:
            print(f"Password has been cracked! It was {password}")
            cracked = True
            break
#this section continues the script if one total iteration of "alphabet" was unsuccessful
    if not cracked:
        new_passwords = []
        for password in passwords:
            for letter in alphabet:
                new_passwords.append(password + letter)
        passwords = new_passwords