FROM node:latest
ENV HTTP_PORT 8000
RUN git clone https://github.com/densitydesign/raw.git
WORKDIR /raw    
RUN npm install -g bower 
RUN bower install --allow-root
RUN cp js/analytics.sample.js js/analytics.js
EXPOSE 8000
CMD ["python","-m","SimpleHTTPServer",$HTTP_PORT] 
