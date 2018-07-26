# Philip Docker App Documentation

This application is the best application ever and is already on the conygre docker repo. 

# How to configure installation
Create file daemon.json in /etc/docker/
You may need to switch user using 

    bash: sudo su
to access /docker/
     
        {"insecure-registries" : ["docker.conygre.com:5000"]}


Restart docker 

    sudo service docker restart

# How to Install
Assuming you already added the .json above and docker is restarted

    bash: docker pull docker.conygre.com:5000/philipdockerapp 

# How to Run

    bash: docker run -d -p 8080:80 docker.conygre.com:5000/philipdockerapp 

# Open in Browser
In your browser, go to you Unix Machine URL port 8080
Example: http://18.218.241.25:8080/

If it worked properly, you should be prompted with the default ASP.NET CORE welcome page.  
I would include a screenshot but I don't know how.
