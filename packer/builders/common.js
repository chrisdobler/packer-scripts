module.exports = {
  ssh: {
    communicator: 'ssh',
    ssh_username: '{{user `ssh_username`}}',
    ssh_private_key_file: '{{user `ssh_private_key_file`}}',
  },

  fusionClone: ({ vm_name, path }) => ({
    type: 'vmware-vmx',
    source_path: `${path}${vm_name}/${vm_name}.vmx`,
  }),
};