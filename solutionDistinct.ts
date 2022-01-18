function solutionDistinct(array: Array<number>): number {
  var output = [];
  for (var i in array) {
    if (output.indexOf(array[i]) == -1) {
      output.push(array[i]);
    }
  }

  return output.length;
}

console.log(solutionDistinct([2, 1, 1, 2, 3, 1]));
