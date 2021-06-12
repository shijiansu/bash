#!/bin/bash
v0=0
v1=100

echo "[BEFORE FUNCTION] v0=$v0" # 0
echo "[BEFORE FUNCTION] v1=$v1" # 100
echo "[BEFORE FUNCTION] v2=$v2" # also 100... 
echo "[BEFORE FUNCTION] v3=$v3" # empty, not exists

function var_scope() {
   v0=-1
   local v1=150
   local v2=200
   for d in 1; do
      local v3=300
   done
   echo "[IN FUNCTION] v0=$v0" # -1
   echo "[IN FUNCTION] v1=$v1" # 150, hidden
   echo "[IN FUNCTION] v2=$v2" # 200
   echo "[IN FUNCTION] v3=$v3" # 300
}

var_scope

echo "[OUTTER FUNCTION] v0=$v0" # -1, assigned
echo "[OUTTER FUNCTION] v1=$v1" # 100, no assigned
echo "[OUTTER FUNCTION] v2=$v2" # also 100... 
echo "[OUTTER FUNCTION] v3=$v3" # empty, not exists
