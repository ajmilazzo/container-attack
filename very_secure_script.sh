#!/bin/sh
cp /usr/bin/python3 /app/python3
setcap cap_setuid+ep /app/python3