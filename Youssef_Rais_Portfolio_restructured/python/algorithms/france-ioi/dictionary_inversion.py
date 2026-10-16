# Lecture du nombre de mots
nbMots = int(input())

# Création du dictionnaire bilingue
bilingual_dict = {}
for _ in range(nbMots):
    mot1, mot2 = input().split()
    bilingual_dict[mot1] = mot2

# Inversion du dictionnaire
inverted_dict = {}
for key, value in bilingual_dict.items():
    inverted_dict[value] = key

# Tri et affichage des couples de mots inversés
for key in sorted(inverted_dict.keys()):
    print(key, inverted_dict[key])
    

