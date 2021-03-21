#!/bin/bash

sudo /home/recompiler/RyzenAdj/build/./ryzenadj --stapm-limit=40000 --fast-limit=40000 --slow-limit=40000 --tctl-temp=95 --vrm-current=60000 --vrmsoc-current=60000 --vrmmax-current=60000 --vrmsocmax-current=60000 --psi0-current=60000 --psi0soc-current=60000 --min-gfxclk=400 --max-gfxclk=2200 --min-fclk-frequency=2133 --max-fclk-frequency=2133

cpupower frequency-set -g performance
