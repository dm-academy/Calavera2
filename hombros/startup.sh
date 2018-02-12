docker build . -t hombros

docker run --env JAVA_OPTS="-Dhudson.Main.development=true -Djenkins.install.runSetupWizard=false" -td  --ip 203.0.113.30  hombros

