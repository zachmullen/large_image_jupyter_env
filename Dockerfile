FROM python:3.10

# This is just to install. Will be overriden by volume mount
RUN git clone https://github.com/girder/large_image.git /large_image
RUN pip install --find-links https://girder.github.io/large_image_wheels \
    -e /large_image \
    # -e /large_image/sources/bioformats \
    # -e /large_image/sources/deepzoom \
    # -e /large_image/sources/dicom \
    # -e /large_image/sources/dummy \
    -e /large_image/sources/gdal \
    # -e /large_image/sources/mapnik \
    # -e /large_image/sources/multi \
    # -e /large_image/sources/nd2 \
    # -e /large_image/sources/ometiff \
    # -e /large_image/sources/openjpeg \
    # -e /large_image/sources/openslide \
    # -e /large_image/sources/rasterio \
    # -e /large_image/sources/test \
    # -e /large_image/sources/tiff \
    # -e /large_image/sources/tifffile \
    # -e /large_image/sources/vips
    # Putting PIL last to always install
    -e /large_image/sources/pil

# Install dev requirements
RUN pip install jupyterlab jupyter-server-proxy ipyleaflet
