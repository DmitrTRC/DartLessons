List<T> insertionSort<T extends Comparable>(List<T> arr) {
  int low = 0;
  int high = arr.length - 1;

  List<T> sortedArr = List.from(arr);

  for (int i = low + 1; i <= high; i++) {
    T key = sortedArr[i];
    int j = i - 1;

    while (j >= low && sortedArr[j].compareTo(key) > 0) {
      sortedArr[j + 1] = sortedArr[j];
      j--;
    }
    sortedArr[j + 1] = key;
  }
  return sortedArr;
}

void main() {
  List<String> arrMainString = [
    'c',
    'k',
    'books',
    '-4',
    'fire',
    'cat',
    'align'
  ];
  List<String> sortedArrMainString = insertionSort(arrMainString);
  List<num> arrMainInt = [15, 2, 0, 2, -4, -56, 222];
  List<num> sortedArrMainInt = insertionSort(arrMainInt);

  print('Base array, String: $arrMainString');
  print('Sorted array, String: $sortedArrMainString');
  print('Base array, int: $arrMainInt');
  print('Sorted array, int: $sortedArrMainInt');
}
