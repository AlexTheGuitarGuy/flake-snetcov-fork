inputs:
inputs.flake_core.utils.collect_dir {
  dir_path = ./.;
  import_values = true;
  import_inputs = inputs;
}
