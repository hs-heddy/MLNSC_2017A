$pwd_as_linux = "/$((pwd).Drive.Name.ToLowerInvariant())/$((pwd).Path.Replace('\', '/').Substring(3))"
docker run -it --rm -v "${pwd_as_linux}:/opt/notebooks/mlnsc" -p 8888:8888 antimon2/mlnsc-dlscratch:latest jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser --NotebookApp.password='' --NotebookApp.token='' --NotebookApp.password_required=False --allow-root