Usage: elixir.bat [options] [.exs file] [data]

  -e COMMAND                  Evaluates the given command (*)
  -r FILE                     Requires the given files/patterns (*)
  -S SCRIPT                   Finds and executes the given script in PATH
  -pr FILE                    Requires the given files/patterns in parallel (*)
  -pa PATH                    Prepends the given path to Erlang code path (*)
  -pz PATH                    Appends the given path to Erlang code path (*)

  --app APP                   Starts the given app and its dependencies (*)
  --cookie COOKIE             Sets a cookie for this distributed node
  --detached                  Starts the Erlang VM detached from console
  --erl SWITCHES              Switches to be passed down to Erlang (*)
  --help, -h                  Prints this message and exits
  --hidden                    Makes a hidden node
  --logger-otp-reports BOOL   Enables or disables OTP reporting
  --logger-sasl-reports BOOL  Enables or disables SASL reporting
  --name NAME                 Makes and assigns a name to the distributed node
  --no-halt                   Does not halt the Erlang VM after execution
  --sname NAME                Makes and assigns a short name to the distributed node
  --version, -v               Prints Elixir version and exits
  --werl                      Uses Erlang's Windows shell GUI

** Options marked with (*) can be given more than once
** Options given after the .exs file or -- are passed down to the executed code
** Options can be passed to the Erlang runtime using ELIXIR_ERL_OPTIONS or --erl
