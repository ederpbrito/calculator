#!/bin/bash
test $(curl localhost:8765/health) -eq {"status":"UP"}