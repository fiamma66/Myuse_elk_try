#!/bin/bash

# RUN pip install in jupyter requirements.txt
docker exec -it jupyter sh -c "pip install -r /home/jovyan/work/requirements.txt"

