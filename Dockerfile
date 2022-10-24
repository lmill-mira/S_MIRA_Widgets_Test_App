# initial instruction
FROM cytomine/software-python3-base:v2.3.1

# needed for cv2
# RUN apt-get install ffmpeg libsm6 libxext6 -y
RUN apt-get install libgl1 -y

# install dependencies, i.e. numpy
RUN pip install numpy==1.21.5 pandas==1.3.0 pillow==9.1.0 opencv-python==4.5.2.54 scikit-image==0.19.1 Shapely==1.8.0 openpyxl==3.0.9 pooch==1.6.0

# copy the files into the Dockerfile
RUN mkdir -p /App
ADD app.py /App/app.py

# app entry point
ENTRYPOINT [ "python", "/App/app.py" ]