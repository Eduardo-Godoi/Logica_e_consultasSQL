const solutionEuclidean = (N: number, M: number): number => {
  const output: Array<number> = [];
  for (let i = 0; i <= N; i++) {
    if (i <= M) {
      output.push(i + i);
    }
  }
  return output.length;
};
console.log(solutionEuclidean(10, 4));
