
void swap<T>(List<T> list, int index1, int index2) {
  T temp = list[index1];
  list[index1] = list[index2];
  list[index2] = temp;
}

List<T> mysort<T extends Comparable>(List<T> list) {
  List<T> cloned = List.from(list);

  for (int i = 0; i < cloned.length; i++) {
    for (int j = 0; j < cloned.length - i - 1; j++) {
      if (cloned[j + 1].compareTo(cloned[j]) < 0) {
        swap(cloned,j+1,j);
      }
    }
  }
  return cloned;
}

void main() {
  List<String> l = ['A', 'C', 'A', 'C'];
  print(mysort(l));
}
