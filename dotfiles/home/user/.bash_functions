#!/bin/bash

# Version Function
version() {
    dpkg -s "$1" | grep Version | awk '{print $2}'
}