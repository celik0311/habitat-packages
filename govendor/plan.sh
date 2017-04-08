pkg_name=govendor
pkg_version=1.0.8
pkg_origin=celik
pkg_maintainer='Celik Sismanturk'
pkg_license=('MIT')
pkg_source="https://github.com/kardianos/govendor/archive/v1.0.8.tar.gz"
pkg_shasum=7e887b84c7a9278473f39ae8a74440ffc17b329aa193e9304d170d458f8785c7
pkg_build_deps=(core/git core/go)
pkg_bin_dirs=(bin)

do_prepare() {
  export GOPATH=$HAB_CACHE_SRC_PATH
}

do_build(){
    go get -u github.com/kardianos/govendor
    go build -o "${pkg_prefix}/bin/govendor"
}

do_install() {
  return 0
}
