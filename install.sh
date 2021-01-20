#!/bin/bash

# functions


function download_file {
    echo "Downloading $2..."
    sudo curl -L $1 --output ./$3
}


# packages 
sudo apt-get update
sudo apt-get install -y net-tools curl

# sdk
sdk_url=https://aka.ms/AzureSphereSDKInstall/Linux
sdk_tar=install_azure_sphere_sdk_2011.tar.gz

download_file $sdk_url 'Azure Sphere SDK' $sdk_tar

sudo tar -xvzf $sdk_tar
sudo chmod +x install_azure_sphere_sdk.sh
