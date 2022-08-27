export RUSTUP_HOME="$APPLICATIONS_HOME/rust/rustup"
export CARGO_HOME="$APPLICATIONS_HOME/rust/cargo"

if [ -f "$CARGO_HOME/env" ]; then
  source $CARGO_HOME/env
else
  echo "Cargo is not installed"
fi
