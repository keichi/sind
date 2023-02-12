#!/bin/bash

gosu munge /usr/sbin/munged &
/usr/sbin/slurmdbd -D
