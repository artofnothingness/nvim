sudo apt install \
    wget -y \
    unzip -y

CLANGD_VERSION=16.0.2
CLANGD_ARCHIVE_NAME=clangd-linux-16.0.2.zip
CLANGD_URL=https://github.com/clangd/clangd/releases/download/${CLANGD_VERSION}/${CLANGD_ARCHIVE_NAME}
CLANGD_FOLDER=clangd_${CLANGD_VERSION}

wget $CLANGD_URL
unzip $CLANGD_ARCHIVE_NAME

sudo cp ${CLANGD_FOLDER}/bin/clangd /usr/bin/
sudo cp -r ${CLANGD_FOLDER}/lib/clang/ /usr/lib/

rm -rf ${CLANGD_FOLDER}
rm -rf ${CLANGD_ARCHIVE_NAME}
