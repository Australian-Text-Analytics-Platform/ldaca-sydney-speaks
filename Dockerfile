FROM python:3.8
LABEL maintainer="Moises Sacal <moisbo@gmail.com>" image_name="jupyter"
RUN apt-get update && apt-get -y update
RUN apt-get install -y build-essential git vim
RUN pip3 -q install pip --upgrade
RUN mkdir src
WORKDIR src/
RUN pip3 install jupyter
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
