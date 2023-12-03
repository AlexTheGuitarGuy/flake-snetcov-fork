{
  dir_path,
  import_values ? false,
  import_inputs ? false,
  ignore_default_file ? true,
  ...
}: let
  dir_content = builtins.attrNames (builtins.readDir dir_path);

  should_include = dir_name:
    !ignore_default_file || (ignore_default_file && dir_name != "default.nix");

  create_entry = content_name: let
    path = dir_path + "/${content_name}";
    value =
      if import_values
      then
        (
          if import_inputs != false
          then (import path) import_inputs
          else import path
        )
      else path;
  in {"${content_name}" = value;};
  accumulate_entry = acc: content_name: acc // (create_entry content_name);

  filtered_content = builtins.filter should_include dir_content;
  result = builtins.foldl' accumulate_entry {} filtered_content;
in
  result
