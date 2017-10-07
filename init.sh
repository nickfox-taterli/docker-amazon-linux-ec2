#!/bin/sh

USER=ec2-user
USER_ID=500
GROUP=ec2-user
GROUP_ID=500
COMMENT="EC2 Default User"

groupadd -g ${GROUP_ID} ${GROUP}
useradd -u ${USER_ID} -g ${GROUP_ID} -c ${COMMENT} -m ${USER}