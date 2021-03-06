#!/bin/bash

set -o errexit

openssl rsa -in rsa2048.key -outform der -pubout | openssl dgst -sha256 -binary | openssl enc -base64
openssl rsa -in rsa3072.key -outform der -pubout | openssl dgst -sha256 -binary | openssl enc -base64
openssl rsa -in rsa4096.key -outform der -pubout | openssl dgst -sha256 -binary | openssl enc -base64
openssl ec -in secp256r1.key -outform der -pubout | openssl dgst -sha256 -binary | openssl enc -base64
openssl ec -in secp384r1.key -outform der -pubout | openssl dgst -sha256 -binary | openssl enc -base64
