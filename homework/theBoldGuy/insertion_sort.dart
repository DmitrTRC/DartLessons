// Change type to String
List<int> insertionSort(List<int> arr, low, high) {
  List<int> sortedArr =  List.from(arr);

  for (int i = low +1; i <= high; i++) {
    int key = sortedArr[i];
    int j = i - 1;

    while (j >= low && sortedArr[j] > key) {
      sortedArr[j+1] = sortedArr[j];
      j--;
    }
    sortedArr[j+1] = key;
  }
  return sortedArr;
}

void main() {
  List<int> arrMain = [45, 15, 0, -4, 76, 888, 345];
  List<int> sortedArrMain = insertionSort(arrMain, 0, arrMain.length - 1);

  print('Base array: $arrMain');
  print('Sorted array: $sortedArrMain');
}
