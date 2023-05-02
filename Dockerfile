FROM python:3.10

RUN pip install jupyter
RUN git clone https://github.com/girder/large_image.git /large_image
RUN pip install -e /large_image[sources] --find-links https://girder.github.io/large_image_wheels
