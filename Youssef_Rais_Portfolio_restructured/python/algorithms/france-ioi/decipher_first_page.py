grille=input('')
mot=input('')
k=mot
A=[]
c1=0
t=""
for i in range (ord('a'),ord('z')+1):
    A.append(chr(i))
for i in range(len(mot)):
    if mot[i].isalpha():
        mot=mot.lower()
        print(mot[i],i)
        for y in range(len(A)):
            if mot[i]==A[y]:
                c1=y
                for z in range(len(grille)):
                    if z==c1 :
                        t+=grille[z]
                c1=0
    else:
            t+=mot[i]
print(mot)
g=""
for i in range (len(t)):
    if k[i].isdigit:
        d=t[i]
    if k[i].isalpha():
        d=t[i]
    if k[i].isupper():
        d=t[i].upper()
    if k[i].islower():
        d=t[i].lower()
    g+=d
print(g)

        
print(t)
print(A)
