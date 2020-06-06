#!/bin/bash
./download_and_extract_Joplin.sh
docker build --tag=joplin --force-rm --no-cache .
