#!/usr/bin/sh

for file in /source/*.sql;
do
    database=$(echo $file | grep -Po '([a-z]+)(?=\.sql)')

    if mysqladmin create $database &> /dev/null;
    then
        mysql $database < $file
        echo "Created and imported database '$database'."
    else
        echo "Database '$database' already exists."
    fi
done
