# rmdrm

`rmdrm` removes DRM from Adobe ADEPT-encrypted EPUB or PDF files, such as those generated from ACSM files. The software is packaged using the [Nix package manager](https://en.m.wikipedia.org/wiki/Nix_package_manager).

The majority of the software was taken from the [DeDRM_tools](https://github.com/apprenticeharper/DeDRM_tools) project. In particular, `rmdrm-epub` is the [`ineptepub.py`](https://github.com/apprenticeharper/DeDRM_tools/blob/master/DeDRM_plugin/ineptepub.py) and [`adobekey.pyw`](https://github.com/apprenticeharper/DeDRM_tools/blob/master/Other_Tools/DRM_Key_Scripts/Adobe_Digital_Editions/adobekey.pyw) files merged together. `rmdrm-pdf` is the [`ineptpdf.py`](https://github.com/apprenticeharper/DeDRM_tools/blob/master/DeDRM_plugin/ineptpdf.py) and [`adobekey.pyw`](https://github.com/apprenticeharper/DeDRM_tools/blob/master/Other_Tools/DRM_Key_Scripts/Adobe_Digital_Editions/adobekey.pyw) files merged together. This repository is licensed under GPLv3.

I packaged the library for use in my CLI application called [Knock](https://github.com/BentonEdmondson/knock).