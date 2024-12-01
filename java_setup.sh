echo "Adding openjdk 8, 11, 17"

jenv add /usr/lib/jvm/*-openjdk

echo "Run 'jenv add /usr/lib/jvm/[version]' if any of the below versions is missing"
echo "$(ls /usr/lib/jvm | rg ^java)"
