# LetsEncrypt-Cloudflare-Automated
Automated lets encrypt license creation and renewal using cloudflare DNS

## Notes
* This can be used with Windows, but will require some extra modifications to the `generate_ssl.sh` file. 
* The Docker container used is stateless

## How to
* Clone this repository to any machine
    * It is most convienent to clone it to the machine you will use the certficiates on, but this is not required and certificates can be moved later manually.
* Using the supplied `cloudflare.example.ini` file, create a `cloudflare.ini` file in the config directory.
    * Use the email and API token for the Cloudflare account which handles your domains DNS
* Edit the `generate_ssl.sh` to add in your own mounting directories and cert directory. 
    * In order for renewals to function, these mounted directories must be preserved on the host
* Run the `generate_ssl.sh` file, wait for a couple minutes, and you will have your certs inside of the mounted cert directory. Run this script each time you want to renew your certificates. It would be most effective to run this on a daily cron job
