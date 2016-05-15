# Demo on how to package and install a spring-boot application as a debian package

Spring boot gives you the possibility to package your application as an executable jar.
This jar includes your code, all dependencies plus an embedded application server.
Since spring boot 1.3 this jar also works as an init script which can be linked to /etc/init.d to have your application started and stopped 
automatically on boot / shutdown.

This approach has some benefits:

* no need to write an init script or use of supervisord
* updating the application server, per default tomcat, is as simple as setting the version in your pom:

        <tomcat.version>8.0.33</tomcat.version>

* very easy to [switch to a different application server]
(http://docs.spring.io/spring-boot/docs/current/reference/html/howto-embedded-servlet-containers.html#howto-use-jetty-instead-of-tomcat)
 e.g. in case of a security issue in tomcat

The application will run as the user that owns the jar, will create a pid file automatically and log to /var/log/<appName>.
Have a look at [the spring boot documentation](http://docs.spring.io/spring-boot/docs/current/reference/html/deployment-install.html), too.

To get you started as fast as possible, I created this demo project which will bundle a debian package via [jdeb](https://github.com/tcurdt/jdeb).
The package will add a user, create needed default folders and set permission properly.
The user and the service will take the name of your mvn artifactId automatically.

To test your I included a vagrant box as well.

## prerequisites

Install `vagrant, virtualbox, maven`

## build the app with:

    mvn clean package

after building your application you are good to fire up the vagrant box which will install java and the deb package automatically:

    vagrant up


Feel free to play around now and when you are done delete your vagrant VM via `vagrant destroy`.
Patches and comments are welcome.
