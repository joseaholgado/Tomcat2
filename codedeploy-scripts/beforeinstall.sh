#!/bin/bash
 

# Movernos a la carpeta de la app y compilar el war
echo "Compilando el war..."
cd /opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deployment-archive
chmod +x gradlew
./gradlew war

END="comprimidoHola"
mv build/libs/holamundo-0.0.1-plain.war build/libs/$END.war
echo "War compilado y renombrado a $END.war"

