#!/bin/bash

git add .

# Menanyakan kepada user apakah ingin melakukan git commit otomatis atau manual
read -p "Apakah Anda ingin melakukan git commit otomatis? (Y/N): " user_input

# Mengkonversi input User
user_input=$(echo "$user_input" | tr '[:lower:]' '[:upper:]')

# Mengecek inputan User
if [[ "$user_input" == "Y" ]]; then
    # Jika user memilih Y, git akan di commit dengan pesan "Default"
    git commit -m "Commit otomatis dari script"
    echo "Commit otomatis telah dilakukan."
elif [[ "$user_input" == "N" ]]; then
    # Jika user memilih N, maka user akan melakukan commit sendiri secara manual
    echo "Silakan lakukan commit secara manual dengan perintah git commit."
    read -p "Apa pesan commit anda: " git_commit_input
    git commit -m "$git_commit_input"
else
    # Jika input bukan Y atau N, berikan pesan error
    echo "Input tidak valid. Harap masukkan Y untuk Ya atau N untuk Tidak."
fi

git push
