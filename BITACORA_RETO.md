# Bitácora del reto — Servidor de pruebas (27-oct-2026)
 
**Nombre:*Manuel Felipe Vargas*
**Fecha y hora en que empecé:**
**Fecha y hora del push de provisionar.sh:**
 
## A. Mientras escribía el guion (Parte 1)
 
| # | Qué pasó (error, sorpresa, algo que tuve que hacer a mano) | Qué hice |
|---|---|---|
| 1 |No such file or directory: '/opt/registro/requirements.txt' |cambie el nombre del archivo y el orden de los comandos que exigia "requiriments.txt antes de haberlo copiado" |
| 2 | cat: /opt/registro/registro.env: Permission denied| |
| 3 | | |
 
## B. La prueba en el Codespace nuevo (Parte 2)
 
| Condición | 1.ª corrida | 2.ª corrida |
|---|---|---|
| ¿El guion terminó? (sí / se detuvo en la línea 3 con el error  for fila in sqlite3.connect('file:/opt/registro/registro.db?mode=ro', uri=True).execute('SELECT id, nombre, momento FROM visitas'):) | |se detuvo en la línea 3 con el error  for fila in sqlite3.connect('file:/opt/registro/registro.db?mode=ro', uri=True).execute('SELECT id, nombre, momento FROM visitas' |
| 1. sqlite3 instalado |si | si |
| 2. Usuario registro | si| si|
| 3. Carpeta con los archivos |si | si|
| 4. ¿Cuántas visitas de verificación? |4 | 4|
| 5. ¿Cuántas líneas tiene registro.env? |0 |0 |
| 6. Dueño de /opt/registro |registro? | registro?|
| 7. ¿Cuántas veces sale el aviso al abrir una terminal nueva? |7 | 7|
 
**¿El servidor quedó en el estado del encargo después de la 2.ª corrida?** (sí / no — ¿en qué no?) no, se estanco denegando el permiso a /opt/registro/registro.env
 
## C. Después de leer la Parte 3
 
**¿Cuál de los tres resultados tuvo mi guion (se cayó / se acumuló / se calló), y en qué línea?** se cayo en la linea 3 
 
**Mini-ejercicio** (idempotente o no, y por qué):
1.
2.
3.
4.
5.
6.
 
**Una línea de mi provisionar.sh escrita como paso, y cómo se diría como estado:**
