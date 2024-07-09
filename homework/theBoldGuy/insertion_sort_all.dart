List<T> insertionSort<T extends Comparable<T>>(List<T> arr, int low, int high) {
  List<T> sortedArr =  List.from(arr);

  for (int i = low +1; i <= high; i++) {
    T key = sortedArr[i];
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
  List<String> arrMainString = ['c', 'k', 'books', '-4', 'fire', 'cat', 'align'];
  List<String> sortedArrMainString = insertionSort<String>(arrMainString, 0, arrMainString.length - 1);
  List<num> arrMainInt = [15, 2, 0, 2, -4, -56, 222];
  List<num> sortedArrMainInt = insertionSort<num>(arrMainInt, 0, arrMainInt.length - 1);

  print('Base array, String: $arrMainString');
  print('Sorted array, String: $sortedArrMainString');
  print('Base array, int: $arrMainInt');
  print('Sorted array, int: $sortedArrMainInt');
}
