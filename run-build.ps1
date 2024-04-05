# Verifica si Node.js está instalado
$nodeVersion = node -v
# if ($null -eq $nodeVersion -or $nodeVersion -notmatch "v18") {
    # Instala Node.js si no está instalado o si la versión no es la serie 16.x
nvm install 18.13.0
nvm use 18.13.0
# }

# Verifica si Angular CLI está instalado y es la versión correcta
# $ngVersion = ng version
# if ($null -eq $ngVersion -or $ngVersion -notmatch "17.0.7") {
    # Si Angular CLI no está instalado o si la versión no coincide, instala la versión 17.0.7
npm install -g @angular/cli@17.0.8
npm install @angular-builders/custom-webpack --save-dev


# }

# Forza la instalación de dependencias si es necesario
npm install --legacy-peer-deps

# Establece la opción de OpenSSL si es necesario
$env:NODE_OPTIONS = "--openssl-legacy-provider"

# Cambia la política de ejecución de PowerShell (¡asegúrate de entender las implicaciones de seguridad!)
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

# Ejecuta la aplicación Angular usando el script 'start' definido en package.json
# npm start
npx ng build --configuration production