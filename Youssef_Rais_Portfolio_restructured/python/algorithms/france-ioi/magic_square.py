# Ask for the rank of the matrix
z = int(input())
# Create the matrix
L = []
k = ''
# The letter 'c' for counter '1 2 3 ...'
c1 = 0
c2 = 0
c3 = 0
c4 = 0
c5 = 0
c6 = 0
c7 = 0
c8 = 0

T = True
for y in range(z):
    L.append(input().split())

# Traverse and sum the rows
for i in range(len(L)):
    for y in range(len(L[i])):
        c1 += int(L[i][y])
    if i == 0:
        c2 = c1
    if c1 != c2:
        T = False
    c5 += c1
    c1 = 0
print(c5, "1", T)
print("ligne",c2)

# For the columns
n = 0
for i in range(len(L)):
    for y in range(len(L[i])):
        c1 += int(L[y][i])
        
    if i == 0:
        c2 = c1
    if c1 != c2:
        T = False
    else:
        c2 = c1
    c6 += c1
    c1 = 0
    n += 1
print(c6, "2", T)
print("colonne",c2)
        
    
# Normal diagonal
h = 0
for i in range(len(L)):
    for y in range(1):
        c3 += int(L[i][h])
        
    h += 1
if c2 != c3:
    T = False
print(c3, 'j', T)
print("diagonale",c3)


# Inverse diagonal
# Problem here to sum the inverse diagonal
D = z - 1
for i in range(len(L)):
    for y in range(1):
        c4 += int(L[i][D])
    D -= 1
if c2 != c4:
    T = False  
print("diagonale inverse",c4)
print(c4,c3)

# Verify that there are no duplicate numbers in the matrix
#verifier les doublons

c9=0
for i in range(len(L)):
    print(L[i])
    for y in range(len(L[i])):
        print(L[i][y])
        if L[i][y]==L[i][c9] and c9!=y:
            T=False
    c9+=1
            



print(T)
# Verify the Boolean
if T == False:
    print('No')
else:
    print("Yes")








