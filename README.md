# Neurohackademy 2019: Retinotopic Maps and fMRI Models

**Author**: Noah C. Benson &lt;[nben@nyu.edu](mailto:nben@nyu.edu)&gt;

This github repository encodes a tutorial on examining retinotopic maps and fMRI models using
data from the [Human Connectome Project](https://db.humanconnectome.org/) (HCP). This tutorial
was written for the 2019 Neurohackademy summer course at the University of Washington.

The tutorial is a notebook (`work/class-notebook.ipynb` in this repository) that can be executed
inside of a [docker](https://docker.com/) container. In order to run this tutorial, you will
need to have docker installed. You will also need a set of credentials from the HCP. To obtain
these credentials, visit their [database site](https://db.humanconnectome.org/), register for
the site, then request Amazon S3 credentials for the 1200 subject release. For more details on
this process see the [neuropythy configuration page](https://github.com/noahbenson/neuropythy/wiki/Configuration).

To run the tutorial, make sure that your local port 8888 is free, then perform the following:

```bash
# In bash:
> git clone https://github.com/noahbenson/neurohackademy2019
...
> cd neurohackademy2019
# Export our HCP credentials; if you have credentials in a file:
> export HCP_CREDENTIALS="`cat ~/.hcp-passwd`"
# If you just have them as a key and secret:
> export HCP_CREDENTIALS="<key>:<secret>"
# Start the jupyter notebook server by bringing up the docker
> docker-compose up
```

This last command should produce a large amount of output as the docker container is built
and started. Once it has started, it should finish by printing a web address that looks
somethin like the following:

```
...
Attaching to neurohackademy2019
neurohackademy2019    | Executing the command: jupyter notebook
neurohackademy2019    | [I 22:28:43.171 NotebookApp] Writing notebook server cookie secret to /home/jovyan/.local/share/jupyter/runtime/notebook_cookie_secret
neurohackademy2019    | [I 22:28:44.106 NotebookApp] JupyterLab extension loaded from /opt/conda/lib/python3.7/site-packages/jupyterlab
neurohackademy2019    | [I 22:28:44.106 NotebookApp] JupyterLab application directory is /opt/conda/share/jupyter/lab
neurohackademy2019    | [I 22:28:44.109 NotebookApp] Serving notebooks from local directory: /home/jovyan
neurohackademy2019    | [I 22:28:44.110 NotebookApp] The Jupyter Notebook is running at:
neurohackademy2019    | [I 22:28:44.110 NotebookApp] http://(58e2ccd31ba9 or 127.0.0.1):8888/?token=e2f1bd8b37c875799a77198bc240af1b32e1ebc967e04801
neurohackademy2019    | [I 22:28:44.110 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
neurohackademy2019    | [C 22:28:44.116 NotebookApp]
neurohackademy2019    |
neurohackademy2019    |     To access the notebook, open this file in a browser:
neurohackademy2019    |         file:///home/jovyan/.local/share/jupyter/runtime/nbserver-7-open.html
neurohackademy2019    |     Or copy and paste one of these URLs:
neurohackademy2019    |         http://(58e2ccd31ba9 or 127.0.0.1):8888/?token=e2f1bd8b37c875799a77198bc240af1b32e1ebc967e04801
```

This final line is telling you how to connect to the notebook server. Basically, copy
everything starting with the "`:8888/`" to the end of the line and paste it into your
browser after "`localhost`", so in this case, you would point your browser to
`localhost:8888/?token=e2f1bd8b37c875799a77198bc240af1b32e1ebc967e04801`. This should
connect you to the notebook server. Click on the `work` directory then on the
`class-notebook.ipynb` file to open the notebook. From there, follow the text and
code in the notebook.


### License 

This README file is part of the neurohackademy 2019 tutorial.

This tutorial is free software: you can redistribute it and/or Modify it under the terms of the
GNU General Public License as published by the Free Software Foundation, either version 3 of the
License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without
even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.  If not,
see <http://www.gnu.org/licenses/>.

