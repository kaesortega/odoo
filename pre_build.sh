#!/bin/bash

# Actualiza el sistema
apt update

# Instala las dependencias necesarias para compilar paquetes de Python
apt install -y build-essential python3-dev libssl-dev libffi-dev

pip install --upgrade pip 


