#!/bin/bash

clear
org_array=( $(cat ~/.aws/credentials | grep -F [ | sort | sed s/[][]//g))
printf '%s\n' "${org_array[@]}"
