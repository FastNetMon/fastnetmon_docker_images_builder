ARG UBUNTU_VERSION=24.04
ARG FASTNETMON_VERSION
FROM ubuntu:${UBUNTU_VERSION}


RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y wget apt-transport-https systemd iproute2 gpg msmtp pwgen curl strace aggregate whois tcpdump mtr-tiny && \
    echo "deb [arch=amd64] https://repo.fastnetmon.com/fastnetmon_ubuntu_jammy jammy fastnetmon" > /etc/apt/sources.list.d/fastnetmon.list &&\
    echo '-----BEGIN PGP PUBLIC KEY BLOCK-----\n\
Version: GnuPG v1\n\
 \n\
 mQINBFenbeUBEADdN/WjudCb0FgC3Oe02R3DriRwzlgirMYGOApT+cfMvsety/Wk\n\
 SRztjFFkX2K/ywXOSRG1+s95D2KG9Ic9vV+2iGKw7q8++v8I1J/bij4r7rY5Pz7m\n\
 diC83JjdcjX86rmJ0m2P3trhqWhYhd3yxwinQg1/P9Oydv7EqS8ool4RXz9/QKfd\n\
 U6KtVTp84F/ONVVZaXv1MPLi/OyG/UJKMuYie0Gw6DCsb4KDVukUZisttk5fucz7\n\
 HvWU9cD0Xgqxup0QFSa6uI6Zcq7FAlfujeIISAsAAk7IzaIbCiae89HPbmGG0gtH\n\
 tSJTgrZKl9oshtZcEOyFDX/Q8dUlzv+GIdbK0BJG8buui+2gRGiANe6glplcQGZE\n\
 kEqSKRnJNi/1WAG4NLpik8WLDhNGVk1G496GtIQl7yyWnB1awXPQqNUBSazdJR9b\n\
 6mHQiz1ZoH1LMP2zCwopGrdxQJsi+8bhx9iDUlJbwDhcmNny5oEsbjBZnSwO6CS7\n\
 TKUOgpxiCNQ/p/0dM0IlTz2YdAVFAbXW3A3tq+cKRBTSrIMDsm0pPckhgeuekM4K\n\
 NSb4Izm5NrlM1+tV/JfUUr7I7jSuSpaIbJBgsC94NvA1K2+T0J/gHzsDOASf6OiB\n\
 rWZ7u+SMSlha2j5dhB3eqt+UZfErBhmnR6Qy4jKncSlo5FiQDTkhDWKKqwARAQAB\n\
 tClQYXZlbCBPZGludHNvdiA8cGF2ZWwub2RpbnRzb3ZAZ21haWwuY29tPokCPQQT\n\
 AQoAJwUCV6dt5QIbAwUJEswDAAULCQgHAwUVCgkICwUWAwIBAAIeAQIXgAAKCRDM\n\
 fW3ec2JlYw6OEACDOzIrVFTHkRt09Zr5Eoi501+ZH+H0S0+ujuMps76o405lCRZv\n\
 eUSrLgdGGx6NxkR6x7cGLAeJpn0xuKcVb0fNDwNQQ/wFxsI8h8p0OrIkXJ2I2dX3\n\
 8edeNT6Y7dbR7MeSUbRkd5rJECMGT3BJvpHZ8bYosptETlp4HajpTPohZU9poPG/\n\
 H+liYcbtFAcw3LqcWzUABqX45UiSittKUgYv4G19/+IkEAjF916fj20HlkZyvU1M\n\
 aRGfGIQDmLLEsC37iBxfeSmokcb68Ld2uWxTPeZYdAAn2cogu2mO+MKFnCtfGnkP\n\
 32IGXcEtTI+dOK6umKiL7tQqmRou2Knx0F4ul7f2i1oTRlf3w5PKKt7BwF572hqW\n\
 VeGWwVAG4gVEAMncMgFMJPFju9vJX+Zq5WBR8cAJOkA2f6fGsklZgC4qOg/TZeNh\n\
 WUKdYPXneoh7YMqOY8PaDeVPArk2+N38vsa2sSuSesoo7Xr4b+9D59ZoxEHn6qKs\n\
 zfIGJqS9dV1OMqwNNi9BDyivor/iDnaoK3xwNsWOg0CjpnFhTLmq1cctO+4pm97q\n\
 4JVfmyedg14ADhe3cAsmXWep8v19+OtN3CkHF+HHKULGn3EOIHk7VQmpJlx74y3Q\n\
 O1QasPDzl2v0nggAJzCng4SkCivzHkP31Y7T4q+WPMjxBfsr9BveAGH6KA==\n\
 =kFoU\n\
 -----END PGP PUBLIC KEY BLOCK-----' >> fastnetmon.key && apt-key add fastnetmon.key && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y fastnetmon=$FASTNETMON_VERSION

CMD exec /opt/fastnetmon/app/bin/fastnetmon
