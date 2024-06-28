import random
import copy
arr=[random.randint(0,100) for x in range(11)]

def sort(int:arr)->int:
    carr=copy.copy(arr)
    for i in range(len(carr)):
        for j in range(len(carr) - i - 1):
            if carr[j + 1] < carr[j]:
                carr[j], carr[j + 1] = carr[j + 1], carr[j]
    return carr
print(arr)
print(sort(arr))
print(arr)
