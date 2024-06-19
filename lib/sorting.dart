// Write function sorts any sortable

List<int> mySort(List<int> arr) {
  arr.sort();
  return arr;
}

List<T> mySort2<T extends Comparable>(List<T> arr) {
  arr.sort();
  return arr;
}
