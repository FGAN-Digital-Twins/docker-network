FROM python:3.10 as py3
ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Install dependencies:
RUN pip install flask \ 
    pip install gunicorn \ 
    python-math \
    requests_html

RUN mkdir /app
COPY ./DT.py /app/DT.py
COPY ./Mod_Ctr.py /app/Mod_Ctr.py
WORKDIR /app
# CMD [ "python3", "-u", "./DT.py" ]
CMD ["gunicorn", "-b",  "0.0.0.0:6002", "DT:app"]