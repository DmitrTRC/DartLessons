def insertion_sort(arr, low, high):
    sorted_arr=arr[:]
    for i in range(low+1, high+1):
        key = sorted_arr[i]
        j = i - 1
        while j >= low and sorted_arr[j] > key:
            sorted_arr[j+1] = sorted_arr[j]
            j -= 1
        sorted_arr[j+1] = key
    return sorted_arr

arr = [45, 15, 0, -4, 76, 888, 345]
sorted_arr = insertion_sort(arr, 0, len(arr) - 1)
print(f'Base array: {arr}')
print(f'Sorted array: {sorted_arr}')
