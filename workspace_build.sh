# # jansson 
# wget http://www.digip.org/jansson/releases/jansson-2.7.tar.bz2 && \
# bunzip2 -c jansson-2.7.tar.bz2 | tar xf - && \
# cd jansson-2.7 && \
# ./configure && make check && make install && \
# echo "/usr/local/lib" >> /etc/ld.so.conf.d/jansson.conf && ldconfig && \

# just execute below command(not it CLI)
# rm ./jansson-2.7.tar.bz2 && rm -rf ./jansson-2.7

# kaldi
# git clone https://github.com/kaldi-asr/kaldi.git

cd ./kaldi/tools && \
make && \
./install_portaudio.sh && \
cd ../src && ./configure --shared && \
sed -i '-g # -O0 -DKALDI_PARANOID/c\-03 -DNDEBUG' kaldi.mk && \
make depend && make && \
cd ./online && make depend && make &&