This is an assignment from lecture 57 where we use a bind mount when running a Jekyll static site generator container. The bind mount will be used to provide updates to entries for the site.

First I pulled down the image

**docker pull bretfisher/jekyll-serve**

then I ran the container from the dir of this assignment specifying a bind mount from here into the /site dir in the container.


**docker run -p 80:4000 -v $(pwd):/site bretfisher/jekyll-serve**

And then make changes to the 2020-07-21...file and navigate to it on the site and verify your changes are reflected in the site via the container bind mount.

