#!/bin/bash

# Prompt the user for the paths of the old and new certificates
read -p "Enter the path of the old certificate: " old_cert_path
read -p "Enter the path of the new certificate: " new_cert_path

# Check if the provided files exist
if [ ! -f "$old_cert_path" ]; then
    echo "Old certificate file not found: $old_cert_path"
    exit 1
fi

if [ ! -f "$new_cert_path" ]; then
    echo "New certificate file not found: $new_cert_path"
    exit 1
fi

# Function to extract key parameters from a certificate
extract_parameters() {
    local cert_path="$1"
    local output=$(openssl x509 -noout -text -in "$cert_path")
    local issuer=$(echo "$output" | grep "Issuer:")
    local subject=$(echo "$output" | grep "Subject:")
    local validity=$(echo "$output" | grep "Validity")
    local serial=$(echo "$output" | grep "Serial Number")
    echo "Certificate: $cert_path"
    echo "$issuer"
    echo "$subject"
    echo "$validity"
    echo "$serial"
}

# Compare key parameters of old and new certificates
echo "Comparing certificates..."
echo "--------------------------------------------"
echo "Old Certificate Parameters:"
echo "--------------------------------------------"
extract_parameters "$old_cert_path"
echo "--------------------------------------------"
echo "New Certificate Parameters:"
echo "--------------------------------------------"
extract_parameters "$new_cert_path"
echo "--------------------------------------------"

# Perform additional comparisons as needed

# You can add more comparisons here based on your requirements

# Example: Compare modulus of RSA keys
# old_modulus=$(openssl x509 -noout -modulus -in "$old_cert_path" | openssl md5)
# new_modulus=$(openssl x509 -noout -modulus -in "$new_cert_path" | openssl md5)
# if [ "$old_modulus" != "$new_modulus" ]; then
#     echo "RSA Modulus does not match!"
# fi

# End of script