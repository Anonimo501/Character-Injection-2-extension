#!/bin/bash

# Solicitar nombre de la carga útil al usuario
read -p "Ingresa el nombre de la carga útil (ej. shell): " payload_name

# Solicitar extensión al usuario
read -p "Ingresa la extensión (ej. .png): " user_ext

# Lista de caracteres especiales
chars=('%20' '%0a' '%00' '%0d0a' '/' '.\\' '.' '…' ':')

# Lista de extensiones
exts=('.asp' '.aspx' '.bat' '.c' '.cfm' '.cgi' '.css' '.com' '.dll' '.exe' '.hta' '.htm' '.html' '.inc' '.jhtml' '.js' '.jsa' '.json' '.jsp' '.log' '.mdb' '.nsf' '.pcap' '.php' '.php2' '.php3' '.php4' '.php5' '.php6' '.php7' '.php8' '.phps' '.pht' '.phtml' '.pl' '.phar' '.phP' '.pHp' '.Php' '.PHP' '.PHp' '.pHP' '.php_' '.rb' '.reg' '.sh' '.shtml' '.sql' '.swf' '.txt' '.xml')

# Generar las combinaciones en los cuatro archivos
for char in "${chars[@]}"; do
    for ext in "${exts[@]}"; do
        echo "${payload_name}${char}${ext}${user_ext}" >> wordlist1.txt
        echo "${payload_name}${ext}${char}${user_ext}" >> wordlist2.txt
        echo "${payload_name}${user_ext}${char}${ext}" >> wordlist3.txt
        echo "${payload_name}${user_ext}${ext}${char}" >> wordlist4.txt
    done
done
