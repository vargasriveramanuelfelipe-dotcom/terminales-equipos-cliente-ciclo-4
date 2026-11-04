
set -euo pipefail
cd "$(dirname "$0")"
#1
sudo apt-get update
sudo apt-get install -y sqlite3

#1.5
sudo apt-get install -y python3 python3-pip

#2
sudo useradd --system registro

#3
sudo mkdir /opt/registro
sudo cp app.py crear_db.py requeriments.txt /opt/registro/

#3.5
sudo install -o registro -g registro -m 600 /dev/null /opt/registro/registro.env
sudo nano /opt/registro/registro.env

#4
sudo env REGISTRO_DB=/opt/registro/registro.db python3 /opt/registro/crear_db.py
sudo sqlite3 /opt/registro/registro.db "INSERT INTO visitas (nombre, momento) VALUES ('Prueba de aprovisionamiento', '2026-10-27 18:30');"

#4.5
sudo set -a . /opt/registro/registro.env
sudo set +a
sudo -u registro env REGISTRO_DB="$REGISTRO_DB" REGISTRO_CLAVE="$REGISTRO_CLAVE" python3 /opt/registro/app.py

#5 
echo "TZ=America/Bogota" | sudo tee -a /opt/registro/registro.env
echo "REGISTRO_DB=/opt/registro/registro.db" | sudo tee -a /opt/registro/registro.env

#6
sudo chown -R registro:registro /opt/registro

#7
echo 'echo "*** SERVIDOR DE PRUEBAS - Registro de Visitas ***"' >> ~/.bashrc

echo "Servidor de pruebas listo."
