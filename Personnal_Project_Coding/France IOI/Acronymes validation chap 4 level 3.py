
acro=input('')
nblivre=int(input(''))
L=[]
j=''
k=''
for i in range (nblivre):
    mot=input('').split(' ')
    print(mot)
    for mots in range(len (mot)):
        mot[mots]=(mot[mots].capitalize())
        print(mot[mots])
    print(mot)
    L=[]
    print(mot)
    for y in range(len(mot)):
        j+=mot[y][0]
    if j.upper()== acro :
        L.append(mot)
        j=''
    else:
        j=''
    print(L)
    for z in range(len(L)):
        for y in range(len(mot)):
           k+= L[z][y] + ' '
        print(k)
        k=''

    


    
 

    

