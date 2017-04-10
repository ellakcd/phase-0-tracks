What are some common HTTP status codes?
200: most common.  represents a successful response. 
if it stars with 2, means sucessful. 
if it starts with 1, means informational response. 
if it starts with 3, means redirection response. 
if it starts with 4, means client side error. 
if it starts with 5, means server side error. 

404 = requested resource was not found. 
403 = access is forbidden.
500 = generic internal server error. 
503 = web server isn't available (could be temporary problem).
504 = connection timeout (could be temporary).


What is the difference between a GET request and a POST request? When might each be used?
HTML forms can specify GET or POST as the method. 
GET is for retreiving data, whereas POST is for writing data.  Therefore, GET can be done over and over without any adverse effects, whereas POSTing something multiple times will actually do the thing multiple times. POST is better for longer / more sensitive data. 


Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
Cookies are small pieces of data sent from website and stored on computers to record information, like whether a user is logged in.  I think HTTP requests can send cookies?  Maybe.  
