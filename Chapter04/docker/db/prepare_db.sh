#!/bin/sh
set -e

chmod +x /opt/code/db/start_postgres.sh
/opt/code/db/start_postgres.sh

echo 'Creating Schema'
python3 /opt/code/init_db.py

/opt/code/db/stop_postgres.sh
