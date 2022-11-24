proc reverse*(text: string): string =
   for i in countdown(text.high(), 0):
      result.add(text[i])