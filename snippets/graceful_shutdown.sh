#!/bin/bash

function gracefulShutdown {
    echo "Shutting down!"

    # magic
}

trap gracefulShutdown SIGTERM

exec "$@" &

wait
