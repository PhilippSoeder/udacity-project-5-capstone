FROM python:3.7.3-stretch
WORKDIR /application
COPY . app.py /application/
RUN pip install --no-cache-dir --trusted-host pypi.python.org --requirement requirements.txt
EXPOSE 80
CMD ["python", "app.py"]
CMD ["python", "-m" , "flask", "run", "--host=0.0.0.0", "--port=80"]