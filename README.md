# inept-epub

This software will decrypt any Adobe ADEPT ePub file, such as those generated from .acsm files.

The majority of the software was taken from the [DeDRM_tools](https://github.com/apprenticeharper/DeDRM_tools) project. In particular, `inept-epub` is the [`ineptepub.py`](https://github.com/apprenticeharper/DeDRM_tools/blob/master/DeDRM_plugin/ineptepub.py) file which decrypts the ePubs and the core of the [`adobekey.pyw`](https://github.com/apprenticeharper/DeDRM_tools/blob/master/Other_Tools/DRM_Key_Scripts/Adobe_Digital_Editions/adobekey.pyw) file merged together.

The software is packaged using the [Nix package manager](https://en.m.wikipedia.org/wiki/Nix_package_manager). It was originally licensed under GPLv3 and remains so.