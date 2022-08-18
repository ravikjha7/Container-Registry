FROM ubuntu:latest

RUN apt-get update

RUN mkdir /home/wlug

WORKDIR /home/wlug

RUN echo "Come on, are you really looking into the files ???">.history

RUN chmod 444 .history

WORKDIR /home

RUN echo "echo 'Your Flag = {{{<KEY>}}}'">>.bash_history

RUN chmod 444 .bash_history

RUN echo "\n\n\n1) Do container have History ??? \n\n\nPossible Commands for the task -> cat, history \n\n\nAll The Best !!!">README

RUN chmod 444 README

WORKDIR /home/wlug

CMD ["/bin/bash"]
