core: let
  modules = core.utils.collect_dir {
    dir_path = ./.;
    import_values = true;
    import_inputs = core;
  };
in
  modules
