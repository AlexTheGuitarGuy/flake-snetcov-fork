let
  collect_dir = import ./collect_dir;
in
  collect_dir {
    dir_path = ./.;
    import_values = true;
  }
