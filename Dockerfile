FROM python:2.7

COPY ./exitwp-for-hugo/* /opt/exitwp-for-hugo/
WORKDIR /opt/exitwp-for-hugo/
RUN pip install --upgrade -r pip_requirements.txt

ENTRYPOINT [ "./exitwp.py" ]
