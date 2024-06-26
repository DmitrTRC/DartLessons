import random
m=[random.randint(0,100) for x in range(11)]

def sort(A)->int:
    for i in range(len(A)):
        for j in range(len(A) - i - 1):
            if A[j + 1] < A[j]:
                A[j], A[j + 1] = A[j + 1], A[j]
    return A
print(m)
print(sort(m))
