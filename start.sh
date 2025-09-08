#!/usr/bin/env bash
set -o errexit  # exit on error

uvicorn main:app --host 0.0.0.0 --port $PORT
