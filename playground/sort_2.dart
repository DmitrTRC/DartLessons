void swap<T>(T a, T b) {
  T temp = a;
  a = b;
  b = temp;
}

List<T> mysort<T extends Comparable>(List<T> list) {
  List<T> cloned = List.from(list);

  for (int i = 0; i < cloned.length; i++) {
    for (int j = 0; j < cloned.length - i - 1; j++) {
      if (cloned[j + 1].compareTo(cloned[j]) < 0) {
        T temp = cloned[j];
        cloned[j] = cloned[j + 1];
        cloned[j + 1] = temp;
      }
    }
  }
  return cloned;
}

void main() {
  List<String> l = ['A', 'C', 'A', 'C'];
  print(mysort(l));
}
