# .bashrc

# https://vagrant-libvirt.github.io/vagrant-libvirt/installation.html#docker--podman
vagrant(){
  podman run -it --rm \
    -e LIBVIRT_DEFAULT_URI \
    -v /var/run/libvirt/:/var/run/libvirt/ \
    -v ~/.vagrant.d:/.vagrant.d \
    -v $(realpath "${PWD}"):${PWD} \
    -w "${PWD}" \
    --network host \
    --entrypoint /bin/bash \
    --security-opt label=disable \
    docker.io/vagrantlibvirt/vagrant-libvirt:latest \
      vagrant $@
}
export -f vagrant
