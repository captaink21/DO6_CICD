#!/bin/bash

scp /home/ubuntu2/builds/5bMA5rx5/0/students/DO6_CICD.ID_356283/captaink/DO6_CICD-1/src/cat/s21_cat ubuntu2@10.20.0.20:/usr/local/bin
scp /home/ubuntu2/builds/5bMA5rx5/0/students/DO6_CICD.ID_356283/captaink/DO6_CICD-1/src/grep/s21_grep ubuntu2@10.20.0.20:/usr/local/bin
ssh ubuntu2@10.20.0.20 ls /usr/local/bin
