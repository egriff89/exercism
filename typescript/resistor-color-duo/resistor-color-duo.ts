const COLORS: string[] = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white'];

export function decodedValue(bands: string[]): number {
  if (bands.length > 2) bands = bands.splice(0, 2);
  let result = '';
  for (let i = 0; i < bands.length; i++) {
    result += COLORS.indexOf(bands[i]);
  }
  return Number(result);
}
