#!/bin/bash

sudo su

docker pull apalahitunamanya2/customer

docker run apalahitunamanya2/customer

mkdir logs

cd logs

touch customer.log

exit
