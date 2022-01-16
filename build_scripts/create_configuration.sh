#!/bin/bash
CONFIG_PATH="./config/production.json"
echo Check Below
echo $CONFIG_PATH
mkdir config
echo "{}" >> $CONFIG_PATH
echo $PWD
json -I -f $CONFIG_PATH \
        -e "this.DB_URL='$DB_URL'" \
        -e "this.CLIENT_URL='$CLIENT_URL'" \
        -e "this.PORT='$PORT'"\
        -e "this.FIREBASE_TYPE='$FIREBASE_TYPE'"\ 
        -e "this.FIREBASE_PROJECT_ID='$FIREBASE_PROJECT_ID'"\
        -e "this.FIREBASE_PRIVATE_KEY_ID='$FIREBASE_PRIVATE_KEY_ID'"\
        -e "this.FIREBASE_PRIVATE_KEY='$FIREBASE_PRIVATE_KEY'"\
        -e "this.FIREBASE_CLIENT_EMAIL='$FIREBASE_CLIENT_EMAIL'"\
        -e "this.FIREBASE_CLIENT_ID='$FIREBASE_CLIENT_ID'"\
        -e "this.FIREBASE_AUTH_URI='$FIREBASE_AUTH_URI'"\
        -e "this.FIREBASE_TOKEN_URI='$FIREBASE_TOKEN_URI'"\
        -e "this.FIREBASE_AUTH_PROVIDER_X509_CERT_URL='$FIREBASE_AUTH_PROVIDER_X509_CERT_URL'"\
        -e "this.FIREBASE_CLIENT_X509_CERT_URL='$FIREBASE_CLIENT_X509_CERT_URL'"

