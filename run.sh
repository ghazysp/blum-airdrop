#!/bin/bash

# Gasss
if [ ! -d "venv" ]; then
    echo "Buat file venv....."
    python3 -m venv venv
fi

echo "Aktivasi venv..."
source venv/bin/activate

# Install bos
if [ ! -f "venv/installed" ]; then
    if [ -f "requirements.txt" ]; then
        echo "Proses install..."
        pip3 install -r requirements.txt
        touch venv/installed
    else
        echo "requirements.txt tidak terbaca."
    fi
else
    echo "Requirements sudah terinstall;skip...."
fi

echo "Menjalankan bot..."
python3 main.py

echo "done"
