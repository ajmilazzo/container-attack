# Container Attack
A very secure container...

![Screenshot 2023-05-31 at 6 10 33 PM](https://github.com/ajmilazzo/container-attack/assets/18070948/7f849b18-e1f3-4d5e-9e77-71b08bed9840)

## Prerequisites
Any kubernetes runtime will work, but this demonstration was developed and tested against [k3d](https://k3d.io/).

## Usage
Run the commands in `commands.txt` for a demonstration of privilege escalation within a container.

## Explanation
Initially, an image is built from the `Dockerfile`, and deployed using the `insecure.yaml` manifest. This image is supposed to run as a non-root user called `app`. By default, kubernetes sets the `allowPrivilegeEscalation` option to `true` on pods. This allows a custom `python` binary pre-packaged into the image to execute with the `setuid` bit set, allowing a script to be run that launches a root shell.

Once the `secure.yaml` manifest is deployed with `allowPrivilegeEscalation` set to false, it is no longer possible to gain a root shell in the pod.
