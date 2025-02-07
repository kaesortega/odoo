#!/bin/bash

# Actualiza el sistema
sudo apt update

# Instala las dependencias necesarias para compilar paquetes de Python
sudo apt install -y build-essential python3-dev libssl-dev libffi-dev

sudo install --upgrade pip 

sudo pip install -r requirements.txt

# Luego inicia tu aplicación (ejemplo para un entorno Flask)
python odoo-bin -r ${{ db_user }} -w ${{ db_pass }} --addons-path=addons -d mydb --db_host=${{ db_host}}
