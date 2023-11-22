{
  outputs = {...}: {
    templates.devenv = {
      path = ./devenv;
      description = "Rust project bootstraped using https://devenv.sh";
      welcomeText = "Run `devenv shell` to start";
    };
  };
}
