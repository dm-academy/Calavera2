docker build . -t hombros

docker run --env JAVA_OPTS="-Dhudson.Main.development=true -Djenkins.install.runSetupWizard=false" -td --net cala01 --ip 203.0.113.33  hombrosTest

