import random

def bubble_sort(array):
    n = len (array)
    for i in range(n):
        for j in range(0,n-i-1):
            if array[j]> array[j+1]:
                array[j],array[j+1] = array[j+1], array[j]
    return array


def main():
    array = [random.randint(0,10000) for _ in  range(1000)]
    print(f"array original : {array}")
    sorterd_array = bubble_sort(array)
    print(f"array ordenado : {sorterd_array}")

if __name__ == "__main__":
    main()