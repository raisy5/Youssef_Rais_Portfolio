'''nbpage=int(input(''))
L=[]
for i in range(ord("a"),ord("z")+1):
    L.append(chr(i))
a=L[:nbpage]
b=L[nbpage:]
c=b+a
resultat=''
a=1
t=c
s=0

for i in range(2,nbpage+1):
    page=input('')
    k=page
    page=page.lower()
    a+=1
    for y in range(len(page)):
        if page[y].isalpha():
            for z in range(len(c)):
                if c[z] == page[y]:
                    if a % 2 == 0:
                        s=(-3*i)
                        t=t[z:]+t[:z]
                        resultat+=t[s]
                        t=c
                        
                    else :
                        s=(5*i)
                        t=t[z:]+t[:z]
                        resultat+=t[s]
                        t=c      

        else:
            resultat+=page[y]
    g=''
    for v in range (0,len(resultat)):
        if k[v].isdigit:
            d=resultat[v]
        if k[v].isalpha():
            d=resultat[v]
        if k[v].isupper():
            d=resultat[v].upper()
        if k[v].islower():
            d=resultat[v].lower()
        g+=d
    print(g)
    g=''
    resultat=''

#version debug avec print    

nbpage=int(input(''))
L=[]
for i in range(ord("a"),ord("z")+1):
    L.append(chr(i))
print(L)
a=L[:nbpage]
b=L[nbpage:]
c=b+a
print(c)
resultat=''
a=1
t=c
s=0

for i in range(2,nbpage+1):
    page=input('')
    k=page
    page=page.lower()
    a+=1
    for y in range(len(page)):
        if page[y].isalpha():
            for z in range(len(c)):
                if c[z] == page[y]:
                    print(c[z] ,z)
                    if a % 2 == 0:
                        print(i)
                        s=(-3*i)
                        print(s)
                        t=t[z:]+t[:z]
                        print(z)
                        print(t)
                        resultat+=t[s]
                        print(resultat)
                        t=c
                        
                    else :
                        print(i)
                        s=(5*i)
                        print(s)
                        t=t[z:]+t[:z]
                        print(z)
                        print(t)
                        resultat+=t[s]
                        print(resultat)
                        t=c      

        else:
            resultat+=page[y]
    print(resultat)
    g=''
    for v in range (0,len(resultat)):
        if k[v].isdigit:
            d=resultat[v]
        if k[v].isalpha():
            d=resultat[v]
        if k[v].isupper():
            d=resultat[v].upper()
        if k[v].islower():
            d=resultat[v].lower()
        g+=d
    print(g)
    g=''
    resultat=''


'''

nb_pages = int(input())

alphabet = 'abcdefghijklmnopqrstuvwxyz'

for i in range(2, nb_pages+1):
    page = input()
    decalage = 3 * i if i % 2 == 0 else -5 * i
    resultat = ''
    for char in page:
        if char.isalpha():
            idx = alphabet.index(char.lower())
            print('idx :',idx)
            new_idx = (idx - decalage) % 26
            print('newidx :',new_idx)
            if char.isupper():
                resultat += alphabet[new_idx].upper()
                print()
            else:
                resultat += alphabet[new_idx]
        else:
            resultat += char
    print(resultat)