#!/bin/sh
mosquitto_pub -h localhost -t /target_pos -m "{\"x\":10.316,\"y\":10.440,\"theta\":1.462}"
