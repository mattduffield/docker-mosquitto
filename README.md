# docker-mosquitto
This is an app using  Mosquitto ready for Docker.

## Installation Steps
The following steps assume that you have Docker already installed on your machine (https://docs.docker.com/linux/):

1. open a terminal window and navigate to where your cloned this repository
2. build the image: `docker build -t <your username>/docker-mosquitto .`
3. verify you have a new image: `docker images`
4. run the image: `docker run -p 1883:1883 --name docker-mosquitto <your username>/docker-mosquitto`
5. open another terminal window
6. `mosquitto_pub -h localhost -p 1883 -t dc/send-sms -m '{"to": "<your mobile number>", "subject":"Text 1","text":"hello matt"}'`
7. verify you received a text on your mobile

If you want to kill the Docker process execute the following command in a terminal window:
`docker ps -a | grep docker-sms`

You will be presented with any matching information. You can get the find the unique id of the prcess and execute the following command to stop it:
`docker stop <pid>`

### Sending a text
```
mosquitto_pub -t dc/send-sms -m '{"to":"<ENTER PHONE NUMBER>","text":"hello mobile"}'
```
