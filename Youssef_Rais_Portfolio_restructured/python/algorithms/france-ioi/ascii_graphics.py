nbligne,nbcolonne=map(int,input('').split(' '))
L=[]
for i in range(nbligne):
    m=[]
    L.append(m)
    for y in range(nbcolonne):
        m.append(".")



nbrectangle=int(input(''))
for i in range(nbrectangle):
    nbligne1,nbcolonne1,nbligne2,nbcolonne2,symbole=map(str,input('').split(' '))
    nbligne1=int(nbligne1)
    nbcolonne1=int(nbcolonne1)
    nbligne2=int(nbligne2)
    nbcolonne2=int(nbcolonne2)
    for i in range(nbligne1,nbligne2+1):
        for y in range(nbcolonne1,nbcolonne2+1):
            L[i][y]=symbole
for i in range(nbligne):
    for y in range(nbcolonne):
        print(L[i][y],end="")
    print(' ')
    

    
