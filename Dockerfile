FROM python:2
RUN git clone https://github.com/axiros/terminal_markdown_viewer.git \
 && cd terminal_markdown_viewer                                      \
 && ./setup.py install

CMD [ "mdv" ]
