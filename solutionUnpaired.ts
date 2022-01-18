function solutionUnpaired(array: Array<number>): number | string {
  var obj: { [key: string]: number } = {};
  let output: number | string = "Not even an unpaired odd number was found.";
  for (var i in array) {
    if (array[i] in obj) {
      obj[array[i]]++;
    } else {
      obj[array[i]] = 1;
    }
  }
  for (var i in obj) {
    if (obj[i] % 2 == 1) {
      output = i;
    }
    if (obj[i] === 1) {
      output = i;
    }
  }
  return output;
}

console.log(solutionUnpaired([9, 3, 9, 3, 9, 7, 9]));
