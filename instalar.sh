set -euo pipefail

cd "$(dirname "$0")"

python3 -m venv .venv 

.venv/bin/python -m pip install -r requeriments.txt

.venv/bin/python crear_db.py 

echo "instalacion lista. para iniciar: bash iniciar.sh"


