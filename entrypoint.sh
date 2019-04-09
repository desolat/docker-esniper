#!/bin/bash

echo ${EITEM} ${EPRICE} > /storage/esniper/eauction
sed -ri "s/EUSER/$EUSER/" /storage/esniper/esniper 
sed -ri "s/EPASS/$EPASS/" /storage/esniper/esniper
esniper -c /storage/esniper/esniper /storage/esniper/eauction
