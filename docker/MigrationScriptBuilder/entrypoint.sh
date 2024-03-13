#! /bin/bash

dotnet ef migrations script -o migration-generated-scripts/create-script.sql
tail -f /dev/null