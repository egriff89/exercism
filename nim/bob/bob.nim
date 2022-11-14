import std/strutils
import re

proc isEmpty(str: string): bool =
   return str.strip() == ""

proc isYelling(str: string): bool =
   return str == toUpper(str)

proc isQuestion(str: string): bool =
   return str.endsWith("?")

proc isNumber(str: string): bool =
   # Check for non-alphabetic characters
   if match(str, re"^[\d\W\s]+$"): true 
   else: false

proc hey*(msg: string): string =
   if isEmpty(msg):
      return "Fine. Be that way!"
   else:
      # Check if message is padded with empty spaces
      if match(msg, re"\s+$"):

         # Strip padding from msg, check if question
         if isQuestion(msg.strip()): 
            return "Sure."
         else: 
            return "Whatever."
      
      # Check if msg is a question, number, or being yelled
      elif isQuestion(msg.strip()):
         if isNumber(msg): 
            return "Sure."
         if isYelling(msg): 
            return "Calm down, I know what I'm doing!"
         return "Sure."

      elif isNumber(msg): 
         return "Whatever."

      elif isYelling(msg): 
         return "Whoa, chill out!"
      else:
         return "Whatever."
