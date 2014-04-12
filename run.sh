#!/bin/bash
coffee --map --compile --watch . &
goapp serve .
