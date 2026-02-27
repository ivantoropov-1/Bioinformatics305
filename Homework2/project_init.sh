#!/bin/bash

if [ -z "$1" ]; then
	echo "No project name provided"
	exit 1
fi

mkdir "$1"
cd "$1"

mkdir data scripts results

touch data/raw_data.txt
chmod 600 data/raw_data.txt

cat > scripts/run_analysis.sh << 'EOF'
#!/bin/bash
echo "Hello from $1"
EOF

chmod +x scripts/run_analysis.sh

cd ..
