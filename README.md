# Zeronet with Tor support

Docker Compose configuration with for launching Zeronet with Tor support.

## Usage

Start Zeronet
```
$ docker-compose up -d
Creating zeronettorcompose_tor_1
Creating zeronettorcompose_zeronet_1
```

Then go to `http://localhost:43110/` in your browser.

Follow logs
```
$ docker-compose logs -f
Attaching to zeronettorcompose_zeronet_1, zeronettorcompose_tor_1
zeronet_1  | [17:22:40] - OpenSSL loaded, version: 01000106F
zeronet_1  | [17:22:40] - Version: 0.4.1 r1536, Python 2.7.6 (default, Jun 22 2015, 17:58:13)
zeronet_1  | [GCC 4.8.2], Gevent: 1.0
zeronet_1  | [17:22:40] - Creating FileServer....
^CERROR: Aborting.
```

Stop Zeronet
```
$ docker-compose stop
Stopping zeronettorcompose_zeronet_1 ... done
Stopping zeronettorcompose_tor_1 ... done
```

## Security and privacy

If you are interested in using Zeronet securely, I recommend trying the [Zeronet Chrome plugin](https://github.com/dmp1ce/zeronet-protocol-crx) to prevent Javascript cross-site scripting attacks. 

If you want to use Zeronet more anonymously, I recommend turning on Tor always mode. To do this, click on the `TOR: AVAILABLE` tab and then `Enable Tor for every connection (slower)`. Then you need to restart Zeronet with `docker-compose restart zeronet`.  Keep in mind this will slow down your initial content downloads and others who do not have Tor will not be able to download from your node.
