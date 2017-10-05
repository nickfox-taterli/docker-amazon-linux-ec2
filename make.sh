#!/bin/sh

VERSION=${1}

BASE_PATH=$(dirname "${0}")
TEMPLATE_PATH="${BASE_PATH}/Dockerfile.template"
PACKAGE_LIST_PATH="${BASE_PATH}/versions/${VERSION}.txt"

if [ ! -f ${PACKAGE_LIST_PATH} ]
then
    echo "${PACKAGE_LIST_PATH} does not exist."
    exit;
fi

cat ${TEMPLATE_PATH}
cat ${PACKAGE_LIST_PATH} | awk '{printf "\t %s \\\n", $1}'
echo "\t;"