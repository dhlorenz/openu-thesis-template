

# Configuring Proxy for git (Ubuntu)

## Set proxy
git config --global http.proxy http://proxy5b.openu.ac.il:80
git config --global https.proxy https://proxy5b.openu.ac.il:80

## Set access token 
https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens
https://github.com/settings/tokens


# Configuring Proxy for WSL (Ubuntu)

## 1. Set Proxy for APT (Fix `sudo apt update`)
To enable package manager updates via proxy:
```sh
echo 'Acquire::http::Proxy "http://proxy5b.openu.ac.il:80/";' | sudo tee /etc/apt/apt.conf.d/99proxy
echo 'Acquire::https::Proxy "https://proxy5b.openu.ac.il:80/";' | sudo tee -a /etc/apt/apt.conf.d/99proxy
```
Verify the configuration:
```sh
cat /etc/apt/apt.conf.d/99proxy
```
Then update:
```sh
sudo apt update
```

## 2. Set System-Wide Proxy (for `wget`, `curl`, etc.)
To apply proxy settings globally:
1. Edit `.bashrc`:
   ```sh
   nano ~/.bashrc
   ```
2. Add the following lines:
   ```sh
   export http_proxy="http://proxy5b.openu.ac.il:80"
   export https_proxy="https://proxy5b.openu.ac.il:80"
   export ftp_proxy="http://proxy5b.openu.ac.il:80"
   export no_proxy="localhost,127.0.0.1"
   ```
3. Apply changes:
   ```sh
   source ~/.bashrc
   ```

## 3. Set Proxy for WSL Networking (Optional)
If WSL still has issues connecting:
```sh
export http_proxy=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):80
export https_proxy=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):80
```

## 4. Verify Proxy is Working
Test connectivity:
```sh
curl -I https://www.google.com
wget --spider https://www.google.com
```
If a **200 OK** response appears, the proxy is set up correctly.

---
For persistence across reboots, add the proxy settings to `~/.profile` as well.


