#!/bin/bash

echo "Installing ROSUS..."

if [ ! -d ./bin ];
  ./build.sh
  if [[ $? -ne 0 ]];
    echo "Build failed! Abandoning install."
    exit 1
  fi
fi

sudo cp ./bin/google /bin/google
sudo cp ./bin/how /bin/how
sudo cp ./bin/ubify /bin/ubify

echo "ROSUS installed!"
