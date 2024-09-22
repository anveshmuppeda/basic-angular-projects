# Angular Projects - NPM Setup Guide

# Basic Angular Projects [![GitHub](https://img.shields.io/github/license/anveshmuppeda/basic-angular-projects?color=blue)](https://github.com/anveshmuppeda/basic-angular-projects/blob/main/LICENSE)

### Prerequisites
1. **Check Angular Version**  
   Refer to the Angular versioning guide: https://v17.angular.io/guide/versions

2. **Verify Node.js Version**
   Ensure you have the correct Node.js version installed.  
   To check your current Node version:
   ```bash
   node -v
   ```
   Example output:
   ```bash
   v21.5.0
   ```

3. **Install Node.js using NVM**
   Use `nvm` (Node Version Manager) to install the required Node.js version:
   ```bash
   nvm install node
   nvm install 18
   ```

4. **List Installed Node.js Versions**
   To view the available Node versions on your system:
   ```bash
   nvm list
   ```
   Example output:
   ```bash
   ->     v18.20.4
           v22.9.0
           system
   default -> node (-> v22.9.0)
   ...
   lts/hydrogen -> v18.20.4
   ```

5. **Set Default Node.js Version**
   Set the default Node.js version for your environment:
   ```bash
   nvm alias default v18.20.4
   ```
   Output:
   ```bash
   default -> v18.20.4
   ```

### Angular Setup

1. **Install Angular CLI Globally**
   To install the Angular CLI globally on your system:
   ```bash
   npm install -g @angular/cli
   ```

2. **Install a Specific Angular Version**
   To install a specific version of Angular CLI (e.g., version 16):
   ```bash
   npm install -g @angular/cli@16
   ```

3. **Check Angular Version**
   Verify the Angular version installed on your system:
   ```bash
   ng version
   ```

### Working with Angular Projects

1. **Create a New Angular Project**
   To create a new Angular project named `hello-world`:
   ```bash
   ng new hello-world
   ```

2. **Run the Application**
   Start the development server to run your Angular app:
   ```bash
   ng serve
   ```

3. **Generate a New Component**
   To add a new component (e.g., `home`):
   ```bash
   ng generate component home
   ```

### Useful References
1. [Angular Versioning Guide](https://v17.angular.io/guide/versions)  
2. [Angular Release Schedule](https://v17.angular.io/guide/releases)

## Project Maintainers & Contributors  
<table>
  <tr>
    <td align="center"><a href="https://anveshmuppeda.github.io/profile/"><img src="https://avatars.githubusercontent.com/u/115966808?v=4" width="100px;" alt=""/><br /><sub><b>Anvesh Muppeda</b></sub></a></td>
    <td align="center"><a href="https://github.com/saimanasak"><img src="https://avatars.githubusercontent.com/u/47205414?v=4" width="100px;" alt=""/><br /><sub><b>Sai Manasa Kota</b></sub></a></td>
    <td align="center"><a href="https://github.com/khajjayamteja"><img src="https://avatars.githubusercontent.com/u/151116058?v=4" width="100px;" alt=""/><br /><sub><b>Teja Sai Srinivas</b></sub></a></td>
  </tr>
</table>  

---