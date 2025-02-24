# Testing hotfixing a Python file on the go in Bash

cat << EOF > tester.py
import sys
if len(sys.argv) < 2:
  print('Usage: python tester.py <number>')
  # exit(0) for clean exit, exit(1) for exit with errors
  sys.exit(0)
n = int(sys.argv[1])
print([x for x in range(n)])
EOF
