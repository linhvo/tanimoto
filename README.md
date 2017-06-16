# Tanimoto
Tanimoto algorithm plugin on pilosa


## Requirements

* Go 1.8
* Pilosa: https://github.com/pilosa/pilosa

## Install

* Install Pilosa
* Change the directory to Pilosa source
* Install Tanimoto
    ```
    make install-plugin from=github.com/linhvo/tanimoto
    ```
* Compile Pilosa
    ```
    make pilosa
    ```
    
    
## Usage

* Stand up pilosa server
    ```
    pilosa server
    ```
* To retrieve list of bitmap ID that have similarity >= 70% with bitmap ID 6223, sending query to pilosa as following:
    ```
    curl -XPOST "http://127.0.0.1:10101/index/mole/query" -d 'Tanimoto(Bitmap(rowID=6223, frame="fingerprint"),frame="fingerprint", threshold=70)'
    ```
