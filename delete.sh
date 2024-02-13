#!/bin/bash

echo "Borrando ..."
aws cloudformation describe-stacks --profile default --stack-name PilaDeploy

echo "Se ha borrado correctamente"