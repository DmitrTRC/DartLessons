List<T> quickSortHuge<T extends Comparable>(List<T> arr) {
  if (arr.isEmpty) {
    return arr;
  }
  // Clone to keep source list immutable
  List<T> arrCopy = List.from(arr);
  List<int> stack = [];
  stack.add(0);
  stack.add(arrCopy.length);
  while (stack.isNotEmpty) {
    int end = stack.removeLast();
    int start = stack.removeLast();
    if (end - start < 2) {
      continue;
    }
    int p = start + ((end - start) ~/ 2);
    p = _partition(arrCopy, p, start, end);
    stack.add(p + 1);
    stack.add(end);
    stack.add(start);
    stack.add(p);
  }
  return arrCopy;
}

int _partition<T extends Comparable>(
    List<T> arr, int pivot, int start, int end) {
  int l = start, h = end - 2;
  T piv = arr[pivot];
  _swap(arr, pivot, end - 1);
  while (l < h) {
    if (arr[l].compareTo(piv) < 0) {
      l++;
    } else if (arr[h].compareTo(piv) >= 0) {
      h--;
    } else {
      _swap(arr, l, h);
    }
  }
  int idx = h;
  if (arr[h].compareTo(piv) < 0) {
    idx++;
  }
  _swap(arr, end - 1, idx);
  return idx;
}

void _swap<T extends Comparable>(List<T> arr, int i, int j) {
  T temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
}
