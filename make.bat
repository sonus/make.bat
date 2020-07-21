REM docker run -w /usr/src/app -v d:/alpha:/usr/src/app node yarn install

REM docker run -w /usr/src/app -v d:/alpha:/usr/src/app node yarn build

REM docker run -w /usr/src/app -v d:/alpha:/usr/src/app punimeister/ruby-compass compass compile

FOR %%A IN (%*) DO (

    

    IF "%%A"=="yarn-install" (
        docker run -w /usr/src/app -v d:/alpha:/usr/src/app node yarn install
    )
    IF "%%A"=="yarn-build" (
        docker run -w /usr/src/app -v d:/alpha:/usr/src/app node yarn build
    )
    IF "%%A"=="yarn-build-dev" (
        docker run -w /usr/src/app -v d:/alpha:/usr/src/app node yarn build-dev
    )


    IF "%%A"=="compass-compile" (
        docker run -w /usr/src/app -v d:/alpha:/usr/src/app punimeister/ruby-compass compass compile
        echo Compass Compiled SCSS to CSS successfully 
    )
    IF "%%A"=="compass-watch" (
        docker run -w /usr/src/app -v d:/alpha:/usr/src/app punimeister/ruby-compass compass watch
    )
    IF "%%A"=="compass-compile-prod" (
        docker run -w /usr/src/app -v d:/alpha:/usr/src/app punimeister/ruby-compass compass compile --production
    )
)
