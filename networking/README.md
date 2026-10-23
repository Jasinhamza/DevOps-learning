# Networking assignment: Domain to NGINX

## Goal : Buy a domain, deploy NGINX on an EC2 instance, and make the page load over your own domain.

## Step 1

1. Step one was to buy the domain. I chose to buy my domain through Cloudfare.
No specific reason except that i know that its cheap.

![Buying the domain](screenshots/01-screenshot.png)

## Step 2

- Launching a EC2 instance.
- Creating a key pair and downloading it.

![Launcing instance](screenshots/02-screenshot.png)

## Step 3

- Changing security settings to allow HTTP from port 80.

![changing security rules](screenshots/03-screenshot.png)

## Step 4

- SSHing into the newly created instance.
- Downloading NGINX on the server.

![NGINX installed](screenshots/04-screenshot.png)

## Step 5

- Starting NGINX on the server and making it start everytime the server boots via "sudo systemctl enable --now nginx".
- Health check, a check to see that nginx is active and running.
- ss -tlnp. are the ports listening.

![Check](screenshots/05-screenshot.png)

## Step 6 - Configuring a DNS

- Adding a record to the domain.
- A type and providing the public IPV4 adress.
- Turning proxy off (which i did not do at first :()

![configuring DNS](screenshots/09-screenshot.png)

## Step 7 - First challenge

- I couldnt access the website. Error code 522 even though the DNS record was correct.
- After some trials and errors i found out the proxy was still on
- Turn the proxy off and it should work right?
- But that was not the case

![Error code 522](screenshots/07-screenshot.png)

- Trying to access the website again and now i get another error code
- It times out

![times out https](screenshots/06-screenshot.png)

- My browser automatically was trying to join through HTTPS but only HTTP was set up through port 80.
- I typed (http://nginx.jasinhamza.com)
- And finally after some hours of trials and tribulations everything worked!

![Working website](screenshots/08-screenshot.png)
