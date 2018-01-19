#!/bin/bash
virtualenv ~/ansible; source ~/ansible/bin/activate
pip install pycparser ansible==2.3.2 boto
source ~/.access_appd
export CLOUD_TO_USE=aws
