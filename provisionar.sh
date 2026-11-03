
sudo apt-get install -y sqlite3
sudo apt-get update
sudo apt-get install -y python3 python3-pip
sudo useradd --system registro
sudo mkdir /opt/registro
sudo install -o registro -g registro -m 600 /dev/null /opt/registro/registro.env
sudo nano /opt/registro/registro.env
sudo REGISTRO_DB=/opt/registro/registro.db
sudo REGISTRO_CLAVE=un_secreto_largo
sudo set -a . /opt/registro/registro.env
sudo set +a
sudo -u registro env REGISTRO_DB="$REGISTRO_DB" REGISTRO_CLAVE="$REGISTRO_CLAVE" python3 /opt/registro/app.py
sudo cp app.py crear_db.py requeriments.txt /opt/registro/
sudo pip3 install -r /opt/registro/requeriments.txt
sudo chown -R registro:registro /opt/registro
sudo env REGISTRO_DB=/opt/registro/registro.db python3 /opt/registro/crear_db.py

sudo sqlite3 /opt/registro/registro.db "INSERT INTO visitas (nombre, momento) VALUES ('Prueba de aprovisionamiento', '2026-10-27 18:30');"
