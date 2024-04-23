git config --global user.email "konduri.praveen239@gmail.com"
git config --global user.name "praveen239"
#git reset HEAD~1 --hard
git cherry-pick $COMMIT_HASH_PARAMETER
make ARCH=x86 defconfig
make ARCH=x86
openssl genpkey -algorithm RSA -out private_key.pem -aes256
openssl rsa-pubout -in private_key.pem -out public_key.pem
openssl rsa -pubout -in private_key.pem -out public_key.pem
openssl dgst -sha256 -sign private_key.pem -out signature.bin barebox
