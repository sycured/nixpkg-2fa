with import <nixpkgs>{};

buildGoPackage rec {
  version = "git";
  pname = "2fa";

  goPackagePath = "wargio/2fa";

  src = fetchFromGitHub {
    owner = "wargio";
    repo = "2fa";
    rev = "9870b18e9370d15c3dfee6c124ff7fc3d079097e";
    sha256 = "0ldvml7ifi7yf25gjiapz5i4lj7arkzgxhidpp7sfj1ympxbygly";
  };

  meta = with stdenv.lib; {
    homepage = "https://github.com/wargio/2fa";
    description = "Two-factor authentication on the command line";
    platforms = platforms.all;
    maintainers = with maintainers; [ rvolosatovs ];
    license = licenses.bsd3;
  };
}
