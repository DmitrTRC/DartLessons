def insertion_sort(arr, low, high):
    for i in range(low+1, high+1):
        key = arr[1]
        j = i - 1
        while j >= low and j > key:
            arr[j+1] = arr[j]
            j -= 1
        arr[j+1] = key

arr = [45, 15, 0, -4, 76, 888, 345]
sorted_arr = insertion_sort(arr, 0, len(arr) - 1)
print(f'Base array: {arr}')
print(f'Sorted array: {sorted_arr}')
