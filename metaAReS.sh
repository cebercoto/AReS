#!/bin/bash
IFS=$'\n'
for i in `cat ${1}`; do
    GERMLINE=`echo ${i} | awk '{ print $1 }'`
    SOMATIC=`echo ${i} | awk '{ print $2 }'`
    NAME=`echo ${i} | awk '{ print $3 }'`
    AReS -S ${SOMATIC} -G ${GERMLINE} -P ${4} --userid ${NAME} --tier1germline ${2} --tier1somatic ${2} --bed ${3}
done
