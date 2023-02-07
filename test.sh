#!/bin/sh
set -eux

podman build -t mbici-tf .

podman run \
      -e PLAN=H4sIAAAAAAACA42SWw6DIBBF/7uK2YBhA8StmBEGS8orgE26+yJWq7Wvv3ncmXuYwINB154AuEUR/RSV2KGldjC+R9PVOme1NHevaEZq81knqE0ogSSlHUlQPgIaA/2ojUyczdppP1sNeDhjoq2V0jHlppZ3ThumRVpFXQoktNLiSPeDb+YCr6Ap70uZCq6T0IhIJZEQUFxwoC35jr0kwtvgHbncytHaW5NpYp/nlqWcPVV/TD3cX6Y4Ww91PFki4Z18c7OvRnHstfOffEpQf8MdzM55oRUCAAA= \
      -e PLATFORM=H4sIAAAAAAACA22QSwrCQBBE957CCyS9EREZsnPnHaST6SSNPTPNfKLe3sTgZ+HuUVVQRRkVzH2IrtlstyaShgVm9OioOU0UH3lkPxh4CatXojRjzpqOAH3WmjtXky21Cmhp4cy+3MFyytCTDRFBVoUmkqCOfIaIt5EtwbcB7of9Zb+DkMDA0rAMgvcio9hdcaAmjWjDrSqZJRl4q7+JqK5qC4v9bw/CbVc59uxQKkE/LM5PdsbPJ08m3MuJHwEAAA== \
      -e SUBJECT=H4sIAAAAAAACA7WTQW7DIBBF9z1FLpAAHhtMZfkuAwyum2IsIIvevk6cpOrCShfJcqQ/T3+eNF0+mU+ypX/b7Tobwxwnmi7TMk8YqHenEL73hXLZz2iPONDepmUi17FLYM1mG/qPUub8zlhO9uDJxYRzimf6IaaBpTlktk07DGPp2BmzApcyYSy9B1FxIWvfcm1Ui954SaCp4QaAFDreSN02bceuC+v2V4xHzKOjB6XuOTYfh/yoY/ebvwhjf4z929/wFRdaepK/K23DnyNjwEOFohJV4xvjreFUgxAakBsFi0snvX+tv/vFT/GXTmac4pP0rbANe1JrbBEbLaVyde2BK1BCCVFbtBKBcwEVKftae7d7t+Ut1W9//AP9oE5i0gMAAA== \
      --privileged \
      -it mbici-tf /run.sh
