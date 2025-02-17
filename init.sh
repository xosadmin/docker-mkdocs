#!/bin/bash
if [ ! -d /opt/mkdocs ]; then
    echo "Cannot find the mapped directory. Using docker volume..."
    mkdir -p /opt/mkdocs
else
    cd /opt/mkdocs
    if [ ! -f /opt/mkdocs/mkdocs.yml ]; then
        echo "Cannot find mkdocs.yml. Creating new project..."
        if [ -z "$project" ]; then
            echo "Project name is not specified. Exiting..."
            exit 1
        else
            mkdocs new "$project"
        fi
    else
        echo "Existing project found."
    fi
fi

echo "Starting mkdocs server..."
mkdocs serve --dev-addr=0.0.0.0:8080
