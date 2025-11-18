{
  pkgs,
  buildGoModule,
  lib,
  fetchFromGitHub,
}:
buildGoModule {
  pname = "terraform-config-inspect";
  version = "2.20.1";

  src = fetchFromGitHub {
    owner = "hashicorp";
    repo = "terraform-config-inspect";
    rev = "225c06ed5fd99341e37f199aed9c91e829c14be1";
    hash = "sha256-3zl2rGij/DBwFOKCLQIkadgKhHYOA+e7v5qrU2qbd+g=";
  };

  vendorHash = "sha256-iYrSk9JqxvhYSJuSv/nhZep41gRr644ZzGFWXMGQgyc=";

  meta = {
    description = "Helper library for shallow inspection of Terraform configurations";
    homepage = "https://github.com/hashicorp/terraform-config-inspect";
    license = lib.licenses.mpl20;
    maintainers = with lib.maintainers; [ drakon64 ];
  };
}
