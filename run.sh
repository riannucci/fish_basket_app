#!/bin/bash
coffee --map --compile --watch . &
goapp serve ./dispatch.yaml ./backend/backend.yaml ui/ui.yaml ./app.yaml
