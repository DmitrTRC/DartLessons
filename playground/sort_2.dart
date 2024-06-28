List<int> mysort(List<int> list) {
  List<int> cloned = List.from(list);

  for (int i = 0; i < cloned.length; i++) {
    for (int j = 0; j < cloned.length - i - 1; j++) {
      if (cloned[j + 1] < cloned[j]) {
        // Separate code into Swap() function
        int temp = cloned[j];
        cloned[j] = cloned[j + 1];
        cloned[j + 1] = temp;
      }
    }
  }
  return cloned;
}

void main() {
  List<int> l = [6, 90, 9, 10];
  print(mysort(l));
}
