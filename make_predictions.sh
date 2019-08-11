#!/usr/bin/env bash
# This script is to be called when running the docker container.
# The log output, which includes the output prediction value, is to be included in your submission as a text file, docker_out.txt
# While running on Kubernetes, also call this script: the terminal output is then tobe included in kubernetes_out.txt.
# ref: https://github.com/udacity/DevOps_Microservices

PORT=8000
echo "Port: $PORT"

# POST method predict
curl -d '{  
   "CHAS":{  
      "0":0
   },
   "RM":{  
      "0":6.575
   },
   "TAX":{  
      "0":296.0
   },
   "PTRATIO":{  
      "0":15.3
   },
   "B":{  
      "0":396.9
   },
   "LSTAT":{  
      "0":4.98
   }
}'\
     -H "Content-Type: application/json" \
     -X POST http://localhost:$PORT/predict
