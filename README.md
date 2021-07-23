# inept-epub

This software will decrypt any Adobe ADEPT EPUB file, such as those generated from ACSM files. The software is packaged using the [Nix package manager](https://en.m.wikipedia.org/wiki/Nix_package_manager).

The majority of the software was taken from the [DeDRM_tools](https://github.com/apprenticeharper/DeDRM_tools) project. In particular, `inept-epub` is the [`ineptepub.py`](https://github.com/apprenticeharper/DeDRM_tools/blob/master/DeDRM_plugin/ineptepub.py) and [`adobekey.pyw`](https://github.com/apprenticeharper/DeDRM_tools/blob/master/Other_Tools/DRM_Key_Scripts/Adobe_Digital_Editions/adobekey.pyw) files merged together. It was originally licensed under GPLv3 and remains so.

The GPLv3 requires that I disclose the dates and contents of all changes made to the original software. The changes and dates can be found in the [commit history](https://github.com/BentonEdmondson/inept-epub/commits/main) (the initial commit is the unmodified script).

I packaged the library for use in my CLI application called [Knock](https://github.com/BentonEdmondson/knock).