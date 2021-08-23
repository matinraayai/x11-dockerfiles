# Zoom Meeting Client for Linux
This Dockerfile creates a minimal image for running the Zoom Linux 
client inside a Docker container. NVIDIA Container Runtime is required
for this image to run as it depends on GL acceleration from the host.

## To Login to A Zoom Account
Do the following steps when running the Zoom container for the first time:
1. Temporarily add ```--sudouser``` flag to the ```x11docker``` command
   in ```Zoom.desktop``` to launch the container with a root enabled.
2. Run the container using the modified launcher.
3. Attach to the container:
```bash
docker exec -it zoom bash
```
4. Install Firefox inside the container:
```bash
apt update && apt install -y firefox
```
5. In Zoom, follow the login prompts provided in the application
and login to your Zoom account in Firefox.
6. After successfully logining in to your account, copy the 
login link associated with the button "Launch Zoom" and run 
the following command inside the container:
```bash
xdg-open "$YOUR_LOGIN_LINK_HERE"
```
7. Remove the ```--sudouser``` flag from the launcher as it's
no longer needed.
Zoom will remain logged in for subsequent launches of the
container as long as the home directory is enabled in x11docker
and the device remains trusted on the account.