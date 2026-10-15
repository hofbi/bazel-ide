#!/usr/bin/env bash
# nolint(set_options)

# --- begin runfiles.bash initialization v3 ---
# Copy-pasted from the Bazel Bash runfiles library v3.
set -uo pipefail
set +e
f=bazel_tools/tools/bash/runfiles/runfiles.bash
# shellcheck disable=SC1090
# shuck: disable=C160
source "${RUNFILES_DIR:-/dev/null}/$f" 2> /dev/null ||
    source "$(grep -sm1 "^$f " "${RUNFILES_MANIFEST_FILE:-/dev/null}" | cut -f2- -d' ')" 2> /dev/null ||
    source "$0.runfiles/$f" 2> /dev/null ||
    source "$(grep -sm1 "^$f " "$0.runfiles_manifest" | cut -f2- -d' ')" 2> /dev/null ||
    source "$(grep -sm1 "^$f " "$0.exe.runfiles_manifest" | cut -f2- -d' ')" 2> /dev/null || {
    echo >&2 "ERROR: cannot find $f"
    exit 1
}
# shuck: disable=C159
f=
set -e
# --- end runfiles.bash initialization v3 ---

run_actiond_mac() {
    "$(rlocation "${ACTIOND_PATH}")" serve-vm --listen=127.0.0.1:8980 --root="$HOME/Library/Caches/actiond/vm"
}

run_actiond_linux() {
    test -r /dev/kvm -a -w /dev/kvm
    sudo modprobe vhost_vsock
    "$(rlocation "${ACTIOND_PATH}")" serve-vm --listen=127.0.0.1:8980 --root="$HOME/.cache/actiond/vm"
}

# https://github.com/hermeticbuild/actiond#start-the-worker
# shuck: disable=S085
case "$(uname -s)" in
    Darwin)
        run_actiond_mac
        ;;
    Linux)
        run_actiond_linux
        ;;
    *)
        echo "Unsupported host platform: $(uname -s)" >&2
        exit 1
        ;;
esac
