#!/usr/bin/env bash
export YONA_DATA=/yona
export PID_FILE=${YONA_DATA}/RUNNING_PID

# Check JAVA Options
if [ "x${JAVA_OPTS}" != "x" ]; then
    echo "[INFO] JAVA OPTIONS: ${JAVA_OPTS}"
    export _JAVA_OPTIONS=${JAVA_OPTS}
fi

# Remove if PID file exists.
if [ -f ${PID_FILE} ]; then
    echo "[INFO] Remove pid file: ${PID_FILE}"
    rm ${PID_FILE}
fi

/bin/bash /opt/yona/bin/yona