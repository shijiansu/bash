#!/bin/bash

echo "template.json:"
cat "template.json"

TEMPLATE_VAR_1="John Doe"

TEMPLATE=$(cat template.json)
eval "cat <<EOF
${TEMPLATE}
EOF"  > result.json

echo ""

echo "result.json:"
cat "result.json"
