{ pkgs }: {
  deps = [
    pkgs.azure-functions-core-tools
    pkgs.ruby_3_1
    pkgs.rubyPackages_3_1.solargraph
  ];
}