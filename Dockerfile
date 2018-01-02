FROM python:2

WORKDIR /usr/src/app

RUN pip install --no-cache-dir --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.0.0-cp27-none-linux_x86_64.whl

COPY . .

RUN python setup.py install
