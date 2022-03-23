# Example Notebooks to run against ldaca

## Branch protected so we do not push sensitive information and remember to remove notebook output

This example run currently using a demo version of Oni deployed on nectar

https://oni-demo.text-commons.org/api

To get an API token go to https://oni-demo.text-commons.org Login via Github and generate an API TOKEN.

Create a `vars.env` file in notebooks folder with:

```bash
API_KEY=PASTE_YOUR_KEY_HERE
```

## Request Access

To access sydney-speaks data you need to be in the sydney-speaks groups for LDACA: Request it by creating an issue in this repository. 


### Launch it via docker

If you like you can run the notebooks using docker:

Build docker image

```bash
docker build -t jupyter .
```

and run

```bash
docker run -v "$(pwd)/notebooks":/src/notebooks -p 8888:8888 jupyter
```

Look for output in your terminal to load jupyter

Example:
```
http://127.0.0.1:8888/?token=<<token provided in your terminal>>
```

Click or copy paste to a browser.

### Open Notebook

In jupyter go to notebooks and open ldaca-sydney-speaks

Once run, the last step will create a data_frame to access the data