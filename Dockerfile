FROM ruby
MAINTAINER Austin Davis-Richardson <harekrishna@gmail.com>

RUN apt-get update

RUN apt-get install -y build-essential

RUN apt-get install -y \
  python \
  python-pip \
  python-dev

# SciPy dependencies
RUN apt-get install -y \
  libatlas-base-dev

RUN apt-get install -y \
  zlib1g-dev \
  libssl-dev \
  libreadline6-dev \
  libyaml-dev

# Python/IPython dependencies
RUN pip install "ipython[notebook]"

VOLUME /notebooks
WORKDIR /notebooks

EXPOSE 8888

# see https://github.com/zeromq/libzmq/issues/1385
RUN ln -s /usr/bin/libtoolize /usr/bin/libtool

RUN gem install \
  nmatrix \
  iruby

ENTRYPOINT ["iruby", "notebook", "--no-browser", "--port=8888", "--ip='*'"]
