#!/bin/bash

uniq there_is_a_base.txt | tr -d "\n" | base58 -d
