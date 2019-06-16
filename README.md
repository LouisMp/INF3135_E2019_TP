# Travail pratique 1

   ## Description

   Le programme encode et décode (encrypt, decrypt) des messages en utilisant une clé simple et un alphabet (fichier alphabet.txt).
Le programme tp1 doit être lancé en ligne de commande avec plusieurs combinaisons d'options possibles mais certaines options sont obligatoires.
* ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) -k Une clé simple : un nombre positif ou négatif;
* ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) -c Le code permanent de l'utilisateur qui doit être de taille 12:
* ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) -d | -e : décoder OU encoder;
   Ce programme a été conçu et écrit dans le cadre du cours INF3135 session été 2019 à l'Université du Quebec à Montréal.

   ## Auteur

   par MPANDZO-OTIANKOUYA Louis Junior (MPAL82010003).

   ## Fonctionnement

   Comme expliqué plus haut il y a des paramètres obligatoire mais il y'en a d'autres qui peuvent augmenter le nombres de combinaisons :
   * ![#c5f015](https://placehold.it/15/c5f015/000000?text=+) -i `<fichier source en entrée avant le traitement>` si argument absent, l'utilisateur est solicité pour taper les caractères à crypter.
   * ![#c5f015](https://placehold.it/15/c5f015/000000?text=+) -o `<fichier traité en sortie après l'exécution voulue>` si argument absent, Résultat de la requête enregistré dans le fichier <sortie_standard.out>.
   * ![#c5f015](https://placehold.it/15/c5f015/000000?text=+) -a `<chemin vers le fichier alphabet>` si argument absent, on lira le fichier `<alphabet.txt>` situé dans le repertoire du projet.
   Voici quelques commandes à taper qu'on peut effectuer :
   + `$ ./tp1 -c MPAL82010003 -d -k 3 -o C:\Users\louis\OneDrive\Documents\Cours\Session 4 Été 2019\INF3135\crypto.sortie`
   + `$ ./tp1 -c MPAL82010003 -e -k 30 -a \Documents\Cours\abc.txt -i msg01.in`

   ## Contenu du projet

- Un fichier `cp.txt` contenant mon code permanent en majuscule et complet;
- Un fichier `tp1.c` contenant le code source du projet, ainsi que la fonction `main`;
- Un fichier `README.md` ci-contre;
- Un fichier nommé `Makefile` supportant les appels `make`, `make clean`, `make data`, `make test` et `make resultat`;
- Un fichier ``.gitignore``.;

   ## Références

   **https://openclassrooms.com/fr/courses/19980-apprenez-a-programmer-en-c/16993-la-saisie-de-texte-securisee*
   **https://openclassrooms.com/fr/courses/19980-apprenez-a-programmer-en-c/16421-lire-et-ecrire-dans-des-fichiers*
   **https://www.tutorialspoint.com/c_standard_library/c_function_atoi.htm*

   ## Statut

   Projet fonctionne correctement avec les quelques tests effectués.
