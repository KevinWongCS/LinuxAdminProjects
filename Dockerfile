#after ":", alpine is the linux distribution 
FROM node:alpine
 #copy all files from above into a directory called app    
COPY . /app        
CMD node /app/app.js
# or
#WORKDIR /app   ; so all following instructions will be executed inside app directory
#CMD node app.js
