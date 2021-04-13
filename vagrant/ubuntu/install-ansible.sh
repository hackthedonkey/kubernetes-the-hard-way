#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
apt-get update \
    && apt-get install -y \
        software-properties-common \
    && apt-add-repository --yes --update ppa:ansible/ansible \
    && apt-get update \
    && apt-get install -y ansible
