List<String> insertionSort(List<String> arr, low, high) {
  List<String> sortedArr =  List.from(arr);

  for (int i = low +1; i <= high; i++) {
    String key = sortedArr[i];
    int j = i - 1;

    while (j >= low && sortedArr[j].compareTo(key) > 0) {
      sortedArr[j+1] = sortedArr[j];
      j--;
    }
    sortedArr[j+1] = key;
  }
  return sortedArr;
}

void main() {
  List<String> arrMain = ['c', 'k', 'books', '-4', 'fire', 'cat', 'align'];
  List<String> sortedArrMain = insertionSort(arrMain, 0, arrMain.length - 1);

  print('Base array: $arrMain');
  print('Sorted array: $sortedArrMain');
}
