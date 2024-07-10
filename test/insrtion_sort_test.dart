import 'package:lesson1/insertion_sort_all.dart';
import 'package:test/test.dart';

void main() {
  group('Quicksort', () {
    test('Empty list', () {
      List<int> list = [];
      expect(insertionSort(list), []);
    });

    test('Single element', () {
      var list = [1];
      expect(insertionSort(list), [1]);
    });

    test('Two elements sorted', () {
      var list = [1, 2];
      expect(insertionSort(list), [1, 2]);
    });

    test('Two elements unsorted', () {
      var list = [2, 1];
      expect(insertionSort(list), [1, 2]);
    });

    test('Multiple elements', () {
      var list = [5, 3, 4, 1, 2];
      expect(insertionSort(list), [1, 2, 3, 4, 5]);
    });

    test('Multiple elements with duplicates', () {
      var list = [5, 3, 4, 1, 2, 5, 1, 2];
      expect(insertionSort(list), [1, 1, 2, 2, 3, 4, 5, 5]);
    });

    test('Big list', () {
      var list = List.generate(10000, (index) => index);
      expect(insertionSort(list), List.generate(10000, (index) => index));
    });

    test('Medium list', () {
      var list = List.generate(100000, (index) => index);
      expect(insertionSort(list), List.generate(100000, (index) => index));
    });

    test('Huge list', () {
      var list = List.generate(1000000, (index) => index);
      expect(insertionSort(list), List.generate(1000000, (index) => index));

    });

  });
}
