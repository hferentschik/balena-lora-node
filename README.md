# Balena LoRa Node

Balena LoRaNode using a Dragino LoRa/GPS HAT.

![Dragino LoRa/GPS HAT](./images/lora_gps_hat.png)

## Configuration

### DT configuration

![DT paramters](./images/device-config.png)

## Development

### Remote in container development

```sh
ssh root@192.168.86.25 -R 10000:localhost:22
sshfs -p 10000 -o idmap=user,nonempty localusername@127.0.0.1:~/mywwwdevelstuff www
```

### Testing sending data

```sh
curl -X POST -H "Content-Type: application/json" \
    -d '{"time":"2022-05-31T19:16:45","measurement":"temperature","fields":{"value":13.4375,"sensor":"DS18B20"}}' \
    http://127.0.0.1:8080/api/v1/send
```

### Troubleshooting

```sh
ls -l /dev/spi*
```

## Misc

* [Dragino Lora/GPS HAT](https://wiki.dragino.com/index.php?title=Lora/GPS_HAT)
* [spidev-test](https://github.com/rm-hull/spidev-test)
* [SPI Configuration](https://github.com/mayeranalytics/pySX127x/issues/21#issuecomment-444596565)
* [How to add Dragino Lora/gps HAT to V3](https://www.thethingsnetwork.org/forum/t/how-to-add-dragino-lora-gps-hat-to-v3/48120)
* [How to install python3.9](https://stackoverflow.com/questions/60824700/how-to-install-python3-9-on-linux-ubuntu-terminal)
* [PyAudio.write SystemError: PY_SSIZE_T_CLEAN macro must be defined for '#' formats](https://stackoverflow.com/questions/70344884/pyaudio-write-systemerror-py-ssize-t-clean-macro-must-be-defined-for-format)

## Credits

TODO ...
