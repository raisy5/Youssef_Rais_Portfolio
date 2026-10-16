#upper/ deux boucle imbriqué l'une parcours le discours et l'autre verifie si en fontion de la longueur du tic si les lettre sont les memes 
letics=input('')
letics=letics.upper()
tics=input('')
tics=tics.upper()
tics=tics.split(' ')
r=0
for i in tics :
    if i == letics :
        r+=1
print(r)
